package Entidades;

import Entidades.Clase;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Profesor.class)
public class Profesor_ { 

    public static volatile SingularAttribute<Profesor, String> descripcion;
    public static volatile SingularAttribute<Profesor, String> grado;
    public static volatile SingularAttribute<Profesor, String> fechaNacimiento;
    public static volatile SingularAttribute<Profesor, String> direccion;
    public static volatile SingularAttribute<Profesor, String> imagen;
    public static volatile ListAttribute<Profesor, Clase> claseList;
    public static volatile SingularAttribute<Profesor, String> nombre;
    public static volatile SingularAttribute<Profesor, String> apMaterno;
    public static volatile SingularAttribute<Profesor, String> correo;
    public static volatile SingularAttribute<Profesor, String> usuario;
    public static volatile SingularAttribute<Profesor, Integer> id;
    public static volatile SingularAttribute<Profesor, String> telefono;
    public static volatile SingularAttribute<Profesor, String> sexo;
    public static volatile SingularAttribute<Profesor, String> apPaterno;
    public static volatile SingularAttribute<Profesor, String> dni;
    public static volatile SingularAttribute<Profesor, String> contraseña;

}