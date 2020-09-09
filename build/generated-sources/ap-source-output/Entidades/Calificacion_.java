package Entidades;

import Entidades.Clase;
import Entidades.Subcalificacion;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Calificacion.class)
public class Calificacion_ { 

    public static volatile SingularAttribute<Calificacion, String> descripcion;
    public static volatile SingularAttribute<Calificacion, Clase> idclase;
    public static volatile SingularAttribute<Calificacion, Integer> id;
    public static volatile ListAttribute<Calificacion, Subcalificacion> subcalificacionList;

}