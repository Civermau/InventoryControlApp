﻿using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;

public static partial class UI
{
    static void StudentUI()
    {
        do
        {
            Console.WriteLine("Alumno Menu:");
            Console.WriteLine("1: Solicitar un material");
            Console.WriteLine("2: Ver solicitudes");
            Console.WriteLine("3: Cambiar contraseña");
            Console.WriteLine("9: Logout");
            String option = Console.ReadLine()??"";
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
            String option = Console.ReadLine()??"";
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
            String option = Console.ReadLine()??"";
            Console.Clear();

            switch (option)
            {
                case "1":
                    ManageInventory();
                    break;
                case "9":
                    return;
                default:
                    break;
            }
        } while (true);
    }

    static void AdministratorUI()
    {
        do
        {
            Console.WriteLine("Administrador Menu:");
            Console.WriteLine("1: Opción 1");
            Console.WriteLine("2: Opción 2");
            Console.WriteLine("3: Opción 3");
            Console.WriteLine("4: Opción 3");
            Console.WriteLine("5: Cambiar contraseña");
            Console.WriteLine("9: Logout");
            String option = Console.ReadLine()??"";
            Console.Clear();

            switch (option)
            {
                case "1":
                    CrudFuntions.ListOrders();
                    int deletedOrders = CrudFuntions.DeleteOrders();
                    Console.WriteLine($"{deletedOrders} pedidos eliminados.");
                    Console.WriteLine();
                    CrudFuntions.ListOrders();
                    break;
                case "2":
                    CrudFuntions.ListTeachers();
                    int deletedTeachers = CrudFuntions.DeleteTeachers();
                    Console.WriteLine($"{deletedTeachers} maestros eliminados.");
                    Console.WriteLine();
                    CrudFuntions.ListTeachers();
                    break;
                case "3":
                    CrudFuntions.ListInventoryManager();
                    int deletedInventoryManager = CrudFuntions.DeleteInventoryManager();
                    Console.WriteLine($"{deletedInventoryManager} almacenistas eliminados.");
                    Console.WriteLine();
                    CrudFuntions.ListInventoryManager();
                    break;
                case "4":
                    CrudFuntions.ListStudents();
                    int deletedStudents = CrudFuntions.DeleteStudents();
                    Console.WriteLine($"{deletedStudents} estudiantes eliminados.");
                    Console.WriteLine();
                    CrudFuntions.ListStudents();
                    break;
                case "9":
                    return;
                default:
                    break;
            }
        } while (true);
    }
}