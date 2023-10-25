﻿using InventoryControl;
using System;

public static class UI
{
    public static void Manage()
    {
        while (true)
        {
            Console.WriteLine("1: Login ");
            Console.WriteLine("2: Signup");
            string res = Console.ReadLine();
            Console.Clear();
            switch (res)
            {
                case "1":
                    LogIn();
                    break;
                case "2":
                    SignUp();
                    break;
                default:
                    Console.WriteLine("Opçión no valida");
                    break;
            }
        }
    }

    static void LogIn()
    {
        Console.WriteLine("Ingresa tu usuario:");
        string userName = Console.ReadLine();
        Console.WriteLine("Ingresa tu contraseña:");
        string password = Console.ReadLine();

        using (Almacen db = new())
        {
            var user = db.Usuarios.FirstOrDefault(u => u.Usuario1 == userName && u.Password == password);

            if (user != null)
            {
                Console.Clear();
                Console.WriteLine($"¡Bienvenido, {userName}!");
                Console.WriteLine("");
                if (user.Docentes.Any())
                {
                    TeacherUI();
                }
                else if (user.Estudiantes.Any())
                {
                    StudentUI();
                }
                else
                {
                    InventoryManagerUI();
                }
            }
            else
            {
                Console.Clear();
                Console.WriteLine("Usuario o contraseña incorrectos. Inténtalo nuevamente.");
            }
        }
    }

    public static void SignUp() 
    {
        
    }


    static void StudentUI()
    {
        do
        {
            Console.WriteLine("Alumno Menu:");
            Console.WriteLine("1: Solicitar un material");
            Console.WriteLine("2: Ver solicitudes");
            Console.WriteLine("3: Cambiar contraseña");
            Console.WriteLine("9: Logout");
            String option = Console.ReadLine();
            Console.Clear();

            switch (option)
            {
                case "9":
                    return;
                default:
                    break;
            }
        } while (true);
    }

    static void TeacherUI()
    {
        do
        {
            Console.WriteLine("Profesor Menu:");
            Console.WriteLine("1: Historial de solicitudes");
            Console.WriteLine("2: Ver solicitudes");
            Console.WriteLine("3: Hacer una solicitud");
            Console.WriteLine("4: Cambiar contraseña");
            Console.WriteLine("9: Logout");
            String option = Console.ReadLine();
            Console.Clear();

            switch (option)
            {
                case "9":
                    return;
                default:
                    break;
            }
        } while (true);
    }

    static void InventoryManagerUI()
    {
        do
        {
            Console.WriteLine("Almacenista Menu:");
            Console.WriteLine("1: Administrar inventario");
            Console.WriteLine("2: Ver solicitudes");
            Console.WriteLine("3: Generar informes");
            Console.WriteLine("4: Cambiar contraseña");
            Console.WriteLine("9: Logout");
            String option = Console.ReadLine();
            Console.Clear();

            switch (option)
            {
                case "9":
                    return;
                default:
                    break;
            }
        } while(true);
    }

    static void AdministratorUI()
    {
        do
        {
            Console.WriteLine("Administrador Menu:");
            Console.WriteLine("1: Opción 1");
            Console.WriteLine("2: Opción 2");
            Console.WriteLine("3: Opción 3");
            Console.WriteLine("4: Cambiar contraseña");
            Console.WriteLine("9: Logout");
            String option = Console.ReadLine();
            Console.Clear();
            
            switch (option)
            {
                case "9":
                    return;
                default:
                    break;
            }
        } while(true);
    }

    static UI()
    {
    }
}
