package Entidades;

import Entidades.Alumno;
import Entidades.Ano;
import Entidades.Matriculaclase;
import Entidades.Seccion;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Matricula.class)
public class Matricula_ { 

    public static volatile SingularAttribute<Matricula, String> descripcion;
    public static volatile SingularAttribute<Matricula, String> fecha;
    public static volatile SingularAttribute<Matricula, Ano> idano;
    public static volatile ListAttribute<Matricula, Matriculaclase> matriculaclaseList;
    public static volatile SingularAttribute<Matricula, Seccion> idseccion;
    public static volatile SingularAttribute<Matricula, Alumno> idalumno;
    public static volatile SingularAttribute<Matricula, Integer> id;

}