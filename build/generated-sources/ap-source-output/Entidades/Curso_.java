package Entidades;

import Entidades.Area;
import Entidades.Clase;
import Entidades.Grado;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Curso.class)
public class Curso_ { 

    public static volatile SingularAttribute<Curso, String> descripcion;
    public static volatile SingularAttribute<Curso, Area> idarea;
    public static volatile SingularAttribute<Curso, Grado> idgrado;
    public static volatile SingularAttribute<Curso, Integer> id;
    public static volatile ListAttribute<Curso, Clase> claseList;
    public static volatile SingularAttribute<Curso, String> nombre;

}