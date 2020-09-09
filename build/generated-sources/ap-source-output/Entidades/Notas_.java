package Entidades;

import Entidades.Matriculaclase;
import Entidades.Periodo;
import Entidades.Subcalificacion;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Notas.class)
public class Notas_ { 

    public static volatile SingularAttribute<Notas, String> descripcion;
    public static volatile SingularAttribute<Notas, Periodo> idperiodo;
    public static volatile SingularAttribute<Notas, Subcalificacion> idsubcalificacion;
    public static volatile SingularAttribute<Notas, Matriculaclase> idmatriculaclase;
    public static volatile SingularAttribute<Notas, Integer> id;
    public static volatile SingularAttribute<Notas, Double> nota;

}