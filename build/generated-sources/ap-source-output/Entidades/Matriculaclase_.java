package Entidades;

import Entidades.Agendaalumno;
import Entidades.Clase;
import Entidades.Matricula;
import Entidades.Notas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Matriculaclase.class)
public class Matriculaclase_ { 

    public static volatile ListAttribute<Matriculaclase, Agendaalumno> agendaalumnoList;
    public static volatile SingularAttribute<Matriculaclase, Clase> idclase;
    public static volatile SingularAttribute<Matriculaclase, Matricula> idmatricula;
    public static volatile ListAttribute<Matriculaclase, Notas> notasList;
    public static volatile SingularAttribute<Matriculaclase, Integer> id;

}