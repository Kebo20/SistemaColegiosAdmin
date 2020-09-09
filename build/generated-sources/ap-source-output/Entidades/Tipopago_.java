package Entidades;

import Entidades.Detallepago;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Tipopago.class)
public class Tipopago_ { 

    public static volatile SingularAttribute<Tipopago, String> descripcion;
    public static volatile ListAttribute<Tipopago, Detallepago> detallepagoList;
    public static volatile SingularAttribute<Tipopago, Double> monto;
    public static volatile SingularAttribute<Tipopago, Integer> id;

}