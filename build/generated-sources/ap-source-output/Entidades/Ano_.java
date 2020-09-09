package Entidades;

import Entidades.Clase;
import Entidades.Matricula;
import Entidades.Periodo;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Ano.class)
public class Ano_ { 

    public static volatile SingularAttribute<Ano, String> descripcion;
    public static volatile ListAttribute<Ano, Matricula> matriculaList;
    public static volatile ListAttribute<Ano, Periodo> periodoList;
    public static volatile SingularAttribute<Ano, Integer> id;
    public static volatile ListAttribute<Ano, Clase> claseList;

}