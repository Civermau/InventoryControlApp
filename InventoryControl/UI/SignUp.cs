using System;
using Microsoft.EntityFrameworkCore.Migrations.Operations;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
using InventoryControl.UI;
using System.Security.Cryptography.X509Certificates;
public static partial class UI{

    //funcion para que el usuario introduzca sus datos al hacer sign up
    public static Person GetDataOfSignUp(bool isStudent){
        Person persona = new Person();
        //si el alumno es estudiante, solicita su registro, semestre y grupo
        if(isStudent){
            do{
                WriteLine("Ingresa tu registro");
            } while (int.TryParse(ReadLine(), out persona.Registro) == false || RegisterValidation(persona.Registro) != 01);
            do{
                WriteLine("Ingresa tu Semestre");
            } while (int.TryParse(ReadLine(), out persona.Semestre) == false || persona.Semestre < 1 || persona.Semestre > 8);
            do{
                WriteLine("Ingresa tu Grupo");
                persona.grupo = ReadLine();
                persona.GrupoID = (int)GetGroupID(persona.grupo);
            } while (GroupVerification(persona.GrupoID) != 01);
        }

        do{
            WriteLine("Ingresa tu/s Nombre/s");
            persona.Nombre = ReadLine();
        } while (NameValidation(persona.Nombre) == false);

        WriteLine("Ingresa tu Apellido Paterno");

        do{
            persona.ApellidoPaterno = ReadLine();
        } while (NameValidation(persona.ApellidoPaterno) == false);

        WriteLine("Ingresa tu Apellido Materno");
        do{
            persona.ApellidoMaterno = ReadLine();
        } while (NameValidation(persona.ApellidoMaterno) == false);
        persona.newUsername = GenerateUsername(persona.Nombre, persona.ApellidoPaterno, persona.ApellidoMaterno);
        do{
            WriteLine("Plantel: ");
            WriteLine("1. Colomos");
            WriteLine("2. Tonalá");
            WriteLine("3. Río Santiago");
            if (!int.TryParse(ReadLine(), out persona.plantel))
            {
                WriteLine("Opción invalida");
            }
        } while (persona.plantel < 1 || persona.plantel > 3);

        //solicita el correo y lo valida para que sea adecuado conforme al formato de alumno, en caso de que el usuario, sea alumno
        if(isStudent){
            do{
                WriteLine("Ingesa tu correo");
                persona.Correo = ReadLine();
            } while (StudentEmailValidation(persona.Correo, persona.Registro) != 01);
        }
        else{
            do
            {
                Console.Write("Correo: ");
                persona.Correo = Console.ReadLine();
            } while (!EmailValidation(persona.Correo));
        }

        do{
            WriteLine("Ingresa tu contraseña");
            persona.Contrasena = ReadLine();
        } while (PasswordValidation(persona.Contrasena) != 01);
        return persona;
    }
    //funcion que agrega los datos al estudiante
    public static void SignUpEstudent(){
        Person person = new Person();
        Estudiante estudiante = new Estudiante();
        Usuario usuario = new Usuario();
        
        person = GetDataOfSignUp(true);
        estudiante.EstudianteId = person.Registro;
        estudiante.Nombre = person.Nombre;
        estudiante.ApellidoPaterno = person.ApellidoPaterno;
        estudiante.ApellidoMaterno = person.ApellidoMaterno;
        estudiante.SemestreId = person.Semestre;
        estudiante.GrupoId = person.GrupoID;
        estudiante.PlantelId = person.plantel;
        estudiante.Correo = person.Correo;
        estudiante.Adeudo = 0;
        usuario.Usuario1 = person.newUsername;
        usuario.Password = person.Contrasena;
        usuario.Temporal = false;
        CrudFuntions.AddStudent(estudiante,usuario);
    }
    //funcion que agrega los datos a docentes
    public static void SignUpDocente(){
        Person person = new Person();
        Docente docente = new Docente();
        Usuario usuario = new Usuario();
        
        person = GetDataOfSignUp(false);
        docente.Nombre = person.Nombre;
        docente.ApellidoPaterno = person.ApellidoPaterno;
        docente.ApellidoMaterno = person.ApellidoMaterno;
        docente.PlantelId = person.plantel;
        docente.Correo = person.Correo;
        usuario.Usuario1 = person.newUsername;
        usuario.Password = person.Contrasena;
        usuario.Temporal = false;
        CrudFuntions.AddTeacher(docente,usuario);
    }
    //funcion que agrega los datos a almacenista
    public static void SignUpAlmacenista(){  
        Person person = new Person();
        Almacenista almacenista = new Almacenista();
        Usuario usuario = new Usuario();
        
        person = GetDataOfSignUp(false);
        almacenista.Nombre = person.Nombre;
        almacenista.ApellidoPaterno = person.ApellidoPaterno;
        almacenista.ApellidoMaterno = person.ApellidoMaterno;
        almacenista.PlantelId = person.plantel;
        almacenista.Correo = person.Correo;
        usuario.Usuario1 = person.newUsername;
        usuario.Password = person.Contrasena;
        usuario.Temporal = false;
        CrudFuntions.AddWarehouseManager(almacenista,usuario);
    }
}