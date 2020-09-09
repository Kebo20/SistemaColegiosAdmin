package Entidades;

import Entidades.Alumnoapoderado;
import Entidades.Asistencia;
import Entidades.Matricula;
import Entidades.Pago;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.6.1.v20150605-rNA", date="2020-02-11T16:11:55")
@StaticMetamodel(Alumno.class)
public class Alumno_ { 

    public static volatile SingularAttribute<Alumno, String> estado;
    public static volatile SingularAttribute<Alumno, String> fechaNacimiento;
    public static volatile SingularAttribute<Alumno, String> provincia;
    public static volatile SingularAttribute<Alumno, String> lenguas;
    public static volatile SingularAttribute<Alumno, String> nombre;
    public static volatile ListAttribute<Alumno, Pago> pagoList;
    public static volatile SingularAttribute<Alumno, String> apMaterno;
    public static volatile SingularAttribute<Alumno, String> correo;
    public static volatile SingularAttribute<Alumno, Integer> id;
    public static volatile SingularAttribute<Alumno, String> telefono;
    public static volatile SingularAttribute<Alumno, String> apPaterno;
    public static volatile SingularAttribute<Alumno, String> dni;
    public static volatile SingularAttribute<Alumno, String> codminedu;
    public static volatile SingularAttribute<Alumno, String> distrito;
    public static volatile SingularAttribute<Alumno, String> colegioanterior;
    public static volatile SingularAttribute<Alumno, String> direccion;
    public static volatile ListAttribute<Alumno, Matricula> matriculaList;
    public static volatile SingularAttribute<Alumno, String> imagen;
    public static volatile ListAttribute<Alumno, Asistencia> asistenciaList;
    public static volatile SingularAttribute<Alumno, String> discapacidad;
    public static volatile SingularAttribute<Alumno, String> departamento;
    public static volatile SingularAttribute<Alumno, String> usuario;
    public static volatile SingularAttribute<Alumno, String> sexo;
    public static volatile ListAttribute<Alumno, Alumnoapoderado> alumnoapoderadoList;
    public static volatile SingularAttribute<Alumno, String> contraseña;

}