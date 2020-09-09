package Entidades;

import Entidades.Alumnoapoderado;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Apoderado.class)
public class Apoderado_ { 

    public static volatile SingularAttribute<Apoderado, String> fechaNacimiento;
    public static volatile SingularAttribute<Apoderado, String> apMaterno;
    public static volatile SingularAttribute<Apoderado, String> correo;
    public static volatile SingularAttribute<Apoderado, String> direccion;
    public static volatile SingularAttribute<Apoderado, String> usuario;
    public static volatile SingularAttribute<Apoderado, Integer> id;
    public static volatile SingularAttribute<Apoderado, String> telefono;
    public static volatile ListAttribute<Apoderado, Alumnoapoderado> alumnoapoderadoList;
    public static volatile SingularAttribute<Apoderado, String> nombre;
    public static volatile SingularAttribute<Apoderado, String> apPaterno;
    public static volatile SingularAttribute<Apoderado, String> dni;
    public static volatile SingularAttribute<Apoderado, String> contraseña;

}