package Entidades;

import Entidades.Agendaclase;
import Entidades.Ano;
import Entidades.Archivo;
import Entidades.Calificacion;
import Entidades.Curso;
import Entidades.Horario;
import Entidades.Matriculaclase;
import Entidades.Profesor;
import Entidades.Seccion;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Clase.class)
public class Clase_ { 

    public static volatile SingularAttribute<Clase, Ano> idano;
    public static volatile ListAttribute<Clase, Matriculaclase> matriculaclaseList;
    public static volatile SingularAttribute<Clase, Seccion> idseccion;
    public static volatile SingularAttribute<Clase, Integer> id;
    public static volatile ListAttribute<Clase, Calificacion> calificacionList;
    public static volatile SingularAttribute<Clase, Curso> idcurso;
    public static volatile ListAttribute<Clase, Archivo> archivoList;
    public static volatile ListAttribute<Clase, Agendaclase> agendaclaseList;
    public static volatile SingularAttribute<Clase, Profesor> idprofesor;
    public static volatile ListAttribute<Clase, Horario> horarioList;

}