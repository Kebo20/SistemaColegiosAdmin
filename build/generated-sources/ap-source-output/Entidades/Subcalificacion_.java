package Entidades;

import Entidades.Calificacion;
import Entidades.Notas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Subcalificacion.class)
public class Subcalificacion_ { 

    public static volatile SingularAttribute<Subcalificacion, String> descripcion;
    public static volatile SingularAttribute<Subcalificacion, Calificacion> idcalificacion;
    public static volatile ListAttribute<Subcalificacion, Notas> notasList;
    public static volatile SingularAttribute<Subcalificacion, Integer> id;

}