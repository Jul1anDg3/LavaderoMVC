/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexion.Conexion;
import Entities.Servicio;
import Entities.Prestacion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate= new JdbcTemplate(con.Conectar());
    ModelAndView mav= new ModelAndView();
    int idFuncionario;
    List datos;
    
    String fechaServicio;
    int tipoLavadoId;
    int tipoDesinfeccionId;
    String funcionario;
    
    
    
    @RequestMapping("index.htm")
    public ModelAndView ListarServicio(){
        String sql="select SERVICIO_ID,SERVICIO_FECHA,SERVICIO_CLIENTE,TIPO_AUTO_TIPO,LAVADO_NOMBRE,LAVADO_FUNCIONARIO,LAVADO_PRECIO,DESINFECCION_NOMBRE,DESINFECCION_FUNCIONARIO,DESINFECCION_PRECIO from TB_SERVICIO\n" +
"inner join tb_lavado on (SERVICIO_LAVADO_ID=LAVADO_ID)\n" +
"inner join tb_desinfeccion on(SERVICIO_DESINFECCION_ID=DESINFECCION_ID)\n" +
"inner join TB_TIPO_AUTO on(SERVICIO_TIPO_AUTO_ID= TIPO_AUTO_ID)";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
             return mav;
    }

    
    @RequestMapping("funcionarios.htm")
    public ModelAndView ListarFuncionario(){
        String sql="select * from TB_LAVADO";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("funcionarios");
        
        return mav;
    }
    @RequestMapping(value="asignarFuncionario.htm", method = RequestMethod.GET )
    public ModelAndView asignarFuncionario(HttpServletRequest request){
        idFuncionario = Integer.parseInt(request.getParameter("id")); 
        String sql;
        sql = "select * from TB_LAVADO where LAVADO_ID="+idFuncionario;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("asignarFuncionario");
        return mav;
    }
    
     @RequestMapping(value = "asignarFuncionario.htm", method = RequestMethod.POST )
     public ModelAndView asignarFuncionario (Prestacion prest){
         String sql = "update TB_LAVADO set LAVADO_FUNCIONARIO=? where LAVADO_ID=?";
         this.jdbcTemplate.update(sql,prest.getFuncionario(),idFuncionario);
         return new ModelAndView("redirect:/funcionarios.htm");
     
     }
     
    
    @RequestMapping(value = "agregarServicio.htm", method = RequestMethod.GET )
    public ModelAndView AgregarServicio(){
        mav.addObject(new Servicio());
        mav.setViewName("agregarServicio");
        return mav;
    }
    
    @RequestMapping(value = "agregarServicio.htm", method = RequestMethod.POST )
    public ModelAndView AgregarServicio(Servicio serv){
        String sql="INSERT INTO `TB_SERVICIO` (SERVICIO_CLIENTE,SERVICIO_FECHA, SERVICIO_TIPO_AUTO_ID, SERVICIO_LAVADO_ID, SERVICIO_DESINFECCION_ID) VALUES(?,?,?,?,?)";
        this.jdbcTemplate.update(sql,serv.getCliente(), serv.getFecha(), serv.getTipoAutoId(), serv.getLavadoId(), serv.getDesinfeccionId());
        return new ModelAndView("redirect:/index.htm");
    }
    
    
}
