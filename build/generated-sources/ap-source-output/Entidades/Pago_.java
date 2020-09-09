package Entidades;

import Entidades.Alumno;
import Entidades.Detallepago;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Pago.class)
public class Pago_ { 

    public static volatile SingularAttribute<Pago, String> fecha;
    public static volatile ListAttribute<Pago, Detallepago> detallepagoList;
    public static volatile SingularAttribute<Pago, Double> total;
    public static volatile SingularAttribute<Pago, Alumno> idalumno;
    public static volatile SingularAttribute<Pago, String> numeroComprobante;
    public static volatile SingularAttribute<Pago, Integer> id;

}