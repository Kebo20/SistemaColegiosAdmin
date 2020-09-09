package Entidades;

import Entidades.Curso;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Area.class)
public class Area_ { 

    public static volatile SingularAttribute<Area, String> descripcion;
    public static volatile SingularAttribute<Area, Integer> id;
    public static volatile SingularAttribute<Area, String> nombre;
    public static volatile ListAttribute<Area, Curso> cursoList;

}