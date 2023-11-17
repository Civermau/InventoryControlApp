using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;

public static partial class UI{
    //Menu para el estudiante
    static void StudentUI(Estudiante? estudiante){
        do{
            WriteLine("Alumno Menu:");
            WriteLine("1: Ver materiales"); //check
            WriteLine("2: Solicitar un material"); //check
            WriteLine("3: Ver solicitudes"); //check
            WriteLine("4: Historial de solicitudes"); //check
            WriteLine("5: Cambiar contraseña"); //check
            WriteLine("9: Logout");
            String option = ReadLine()??"";
            Clear();
            switch (option){
                case "1":
                    CrudFunctions.ListCategories(2);
                    break;
                case "2":
                    CrudFunctions.OrderMaterial(2,estudiante.UsuarioId);
                    break;
                case "3":
                    CrudFunctions.ListOrders(2,estudiante.EstudianteId);
                    break;
                case "4":
                    CrudFunctions.HistoryOfOrders(2,estudiante.EstudianteId);
                    break;
                case "5":
                    ForgotPassword();
                    break;
                case "9":
                    return;
                default:
                    break;
            }
        } while (true);
    }

    //Menu para el docente
    static void TeacherUI(Docente? docente){
        do{
            WriteLine("Profesor Menu:");
            WriteLine("1: Historial de solicitudes"); //check
            WriteLine("2: Ver solicitudes"); //check
            WriteLine("3: Hacer una solicitud"); //check
            WriteLine("4: Ver materiales"); //check
            WriteLine("5: Aprovar solicitudes"); //check
            WriteLine("6: Cambiar contraseña"); //check
            WriteLine("9: Logout");

            String option = ReadLine()??"";
            Clear();

            switch (option)
            {
                case "1":
                    CrudFunctions.HistoryOfOrders(1,docente.DocenteId);
                    break;
                case "2":
                    CrudFunctions.ListOrders(1,docente.DocenteId);
                    break;
                case "3":
                    CrudFunctions.OrderMaterial(1,docente.UsuarioId);
                    break;
                case "4":
                    CrudFunctions.ListCategories(1);
                    break;
                case "5":
                    CrudFunctions.ApprovedOrder(1,docente.DocenteId);
                    break;
                case "6":
                    ForgotPassword();
                    break;
                case "9":
                    return;
                default:
                    break;
            }
        } while (true);
    }

    //Menu para el almacenista
    static void InventoryManagerUI(Almacenista? almacenista){
        do{
            WriteLine("Almacenista Menu:");
            WriteLine("1: Administrar inventario"); //medio check
            WriteLine("2: Ver solicitudes"); //check
            WriteLine("3: Generar informes");
            WriteLine("4: Agregar pedido"); //check
            WriteLine("5: Modificar pedido");//check
            WriteLine("6: Eliminar pedido");//check  casi
            WriteLine("7: Cambiar contraseña"); //check
            WriteLine("8: Agendar mantenimiento");//check
            WriteLine("9: Entrega de material");
            WriteLine("10: Logout");

            string option = ReadLine()??"";
            Clear();

            switch (option){
                case "1":
                    ManageInventory();
                    break;
                case "2":
                    CrudFunctions.ListOrders(3,almacenista.AlmacenistaId);
                    break;
                case "3":
                    CrudFunctions.GenerateReports();
                    break;
                case "4":
                    CrudFunctions.OrderMaterial(3,almacenista.AlmacenistaId);
                    break;
                case "5":
                    CrudFunctions.ListOrdersWithHighlight();
                    int updateOrders = CrudFunctions.UpdateOrders();
                    WriteLine($"{updateOrders} pedidos modificados.");
                    WriteLine();
                    CrudFunctions.ListOrdersWithHighlight();
                    break;
                case "6":
                    CrudFunctions.ListOrdersWithHighlight();
                    int deletedOrders = CrudFunctions.DeleteOrders();
                    WriteLine($"{deletedOrders} pedidos eliminados.");
                    WriteLine();
                    CrudFunctions.ListOrdersWithHighlight();
                    break;
                case "7":
                    ForgotPassword();
                    break;
                case "8":
                    CrudFunctions.NewReportMant();
                    break;
                case "9":
                    CrudFunctions.EntregaMaterial();
                    break;
                case "10":
                    return;
                default:
                    break;
            }
        } while (true);
    }

    //Menu para el administrador
    static void AdministratorUI(Coordinador? coordinador){
        do{
            WriteLine("Administrador Menu:");
            WriteLine("1: Eliminar pedido"); //check casi
            WriteLine("2: Eliminar maestro"); //check casi
            WriteLine("3: Eliminar almacenista"); //check casi
            WriteLine("4: Eliminar estudiante"); //check casi
            //WriteLine("5: Eliminar mantenimiento"); //check
            WriteLine("6: Modificar pedido"); //check
            WriteLine("7: Modificar maestro"); //check
            WriteLine("8: Modificar almacenista"); //check
            WriteLine("9: Modificar estudiante"); //check
            WriteLine("10: Modificar mantenimiento"); 
            WriteLine("11: Agregar pedido"); //check
            WriteLine("12: Agregar maestro"); //check
            WriteLine("13: Agregar almacenista"); //check
            WriteLine("14: Agregar estudiante"); //check
            WriteLine("15: Agregar mantenimiento"); //check
            WriteLine("16: Agregar reporte mantenimiento"); //check
            WriteLine("17: Cambiar contraseña"); //check
            WriteLine("18: Logout"); //check
            String option = ReadLine()??"";
            Clear();

            switch (option){
                case "1":
                    CrudFunctions.ListOrdersWithHighlight();
                    int deletedOrders = CrudFunctions.DeleteOrders();
                    WriteLine($"{deletedOrders} pedidos eliminados.");
                    WriteLine();
                    CrudFunctions.ListOrdersWithHighlight();
                    break;
                case "2":
                    CrudFunctions.ListTeachers();
                    int deletedTeachers = CrudFunctions.DeleteTeachers();
                    WriteLine($"{deletedTeachers} maestros eliminados.");
                    WriteLine();
                    CrudFunctions.ListTeachers();
                    break;
                case "3":
                    CrudFunctions.ListInventoryManager();
                    int deletedInventoryManager = CrudFunctions.DeleteInventoryManager();
                    WriteLine($"{deletedInventoryManager} almacenistas eliminados.");
                    WriteLine();
                    CrudFunctions.ListInventoryManager();
                    break;
                case "4":
                    CrudFunctions.ListStudents();
                    int deletedStudents = CrudFunctions.DeleteStudents();
                    WriteLine($"{deletedStudents} estudiantes eliminados.");
                    WriteLine();
                    CrudFunctions.ListStudents();
                    break;
                    /*
                case "5":
                    CrudFunctions.ReadMantenimientos();
                    int deletedMat = CrudFunctions.DeleteMant();
                    WriteLine($"{deletedMat} mantenimientos eliminados.");
                    WriteLine();
                    CrudFunctions.ReadMantenimientos();
                    break;
                    */
                case "6":
                    CrudFunctions.ListOrdersWithHighlight();
                    int updateOrders = CrudFunctions.UpdateOrders();
                    WriteLine($"{updateOrders} pedidos modificados.");
                    WriteLine();
                    CrudFunctions.ListOrdersWithHighlight();
                    break;
                case "7":
                    CrudFunctions.ListTeachers();
                    int updateTeachers = CrudFunctions.UpdateDataUsers(1);
                    WriteLine($"{updateTeachers} maestros modificados.");
                    WriteLine();
                    CrudFunctions.ListTeachers();
                    break;
                case "8":
                    CrudFunctions.ListInventoryManager();
                    int updateInventoryManager = CrudFunctions.UpdateDataUsers(2);
                    WriteLine($"{updateInventoryManager} almacenistas modificados.");
                    WriteLine();
                    CrudFunctions.ListInventoryManager();
                    break;
                case "9":
                    CrudFunctions.ListStudents();
                    int updateStudents = CrudFunctions.UpdateDataUsers(3);
                    WriteLine($"{updateStudents} estudiantes modificados.");
                    WriteLine();
                    CrudFunctions.ListStudents();
                    break;
                case "10":
                    break;
                case "11":
                    CrudFunctions.OrderMaterial(4,coordinador.UsuarioId);
                    break;
                case "12":
                    UI.SignUpDocente();
                    break;
                case "13":
                    UI.SignUpAlmacenista();
                    break;
                case "14":
                    UI.SignUpEstudent();
                    break;
                case "15":
                    CrudFunctions.NewMant();
                    break;
                case "16":
                    CrudFunctions.NewReportMant();
                    break;
                case "17":
                    ForgotPassword();
                    break;
                case "18":
                    return;
                default:
                    break;
            }
        } while (true);
    }
}