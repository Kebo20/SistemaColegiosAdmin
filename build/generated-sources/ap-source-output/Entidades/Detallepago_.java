package Entidades;

import Entidades.Pago;
import Entidades.Tipopago;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Detallepago.class)
public class Detallepago_ { 

    public static volatile SingularAttribute<Detallepago, String> descripcion;
    public static volatile SingularAttribute<Detallepago, Pago> idpago;
    public static volatile SingularAttribute<Detallepago, Tipopago> idtipopago;
    public static volatile SingularAttribute<Detallepago, Integer> id;

}