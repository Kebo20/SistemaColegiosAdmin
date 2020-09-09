package Entidades;

import Entidades.Alumno;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Asistencia.class)
public class Asistencia_ { 

    public static volatile SingularAttribute<Asistencia, String> descripcion;
    public static volatile SingularAttribute<Asistencia, String> fecha;
    public static volatile SingularAttribute<Asistencia, String> tipo;
    public static volatile SingularAttribute<Asistencia, Alumno> idalumno;
    public static volatile SingularAttribute<Asistencia, String> id;

}