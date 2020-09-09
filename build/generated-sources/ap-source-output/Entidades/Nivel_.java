package Entidades;

import Entidades.Grado;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Nivel.class)
public class Nivel_ { 

    public static volatile SingularAttribute<Nivel, String> tipo;
    public static volatile SingularAttribute<Nivel, Integer> id;
    public static volatile ListAttribute<Nivel, Grado> gradoList;

}