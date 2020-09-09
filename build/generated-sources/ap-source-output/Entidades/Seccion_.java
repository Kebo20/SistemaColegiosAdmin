package Entidades;

import Entidades.Clase;
import Entidades.Grado;
import Entidades.Matricula;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Seccion.class)
public class Seccion_ { 

    public static volatile SingularAttribute<Seccion, Grado> idgrado;
    public static volatile ListAttribute<Seccion, Matricula> matriculaList;
    public static volatile SingularAttribute<Seccion, Integer> id;
    public static volatile ListAttribute<Seccion, Clase> claseList;
    public static volatile SingularAttribute<Seccion, String> nombre;

}