package Entidades;

import Entidades.Curso;
import Entidades.Nivel;
import Entidades.Seccion;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Grado.class)
public class Grado_ { 

    public static volatile SingularAttribute<Grado, Nivel> idnivel;
    public static volatile SingularAttribute<Grado, Integer> id;
    public static volatile SingularAttribute<Grado, String> nombre;
    public static volatile ListAttribute<Grado, Curso> cursoList;
    public static volatile ListAttribute<Grado, Seccion> seccionList;

}