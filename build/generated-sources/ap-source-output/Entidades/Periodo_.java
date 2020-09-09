package Entidades;

import Entidades.Ano;
import Entidades.Notas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Periodo.class)
public class Periodo_ { 

    public static volatile SingularAttribute<Periodo, String> descripcion;
    public static volatile SingularAttribute<Periodo, Ano> idano;
    public static volatile SingularAttribute<Periodo, String> fechaInicio;
    public static volatile ListAttribute<Periodo, Notas> notasList;
    public static volatile SingularAttribute<Periodo, Integer> id;
    public static volatile SingularAttribute<Periodo, String> fechaFin;

}