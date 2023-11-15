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
                    CrudFuntions.ListCategories(2);
                    break;
                case "2":
                    CrudFuntions.OrderMaterial(2,estudiante.UsuarioId);
                    break;
                case "3":
                    CrudFuntions.ListOrders(2,estudiante.EstudianteId);
                    break;
                case "4":
                    CrudFuntions.HistoryOfOrders(2,estudiante.EstudianteId);
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
                    CrudFuntions.HistoryOfOrders(1,docente.DocenteId);
                    break;
                case "2":
                    CrudFuntions.ListOrders(1,docente.DocenteId);
                    break;
                case "3":
                    CrudFuntions.OrderMaterial(1,docente.UsuarioId);
                    break;
                case "4":
                    CrudFuntions.ListCategories(1);
                    break;
                case "5":
                    CrudFuntions.ApprovedOrder(1,docente.DocenteId);
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
                    CrudFuntions.ListOrders(3,almacenista.AlmacenistaId);
                    break;
                case "3":
                    CrudFuntions.GenerateReports();
                    break;
                case "4":
                    CrudFuntions.OrderMaterial(3,almacenista.AlmacenistaId);
                    break;
                case "5":
                    CrudFuntions.ListOrdersWithHighlight();
                    int updateOrders = CrudFuntions.UpdateOrders();
                    WriteLine($"{updateOrders} pedidos modificados.");
                    WriteLine();
                    CrudFuntions.ListOrdersWithHighlight();
                    break;
                case "6":
                    CrudFuntions.ListOrdersWithHighlight();
                    int deletedOrders = CrudFuntions.DeleteOrders();
                    WriteLine($"{deletedOrders} pedidos eliminados.");
                    WriteLine();
                    CrudFuntions.ListOrdersWithHighlight();
                    break;
                case "7":
                    ForgotPassword();
                    break;
                case "8":
                    CrudFuntions.NewReportMant();
                    break;
                case "9":
                    CrudFuntions.EntregaMaterial();
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
                    CrudFuntions.ListOrdersWithHighlight();
                    int deletedOrders = CrudFuntions.DeleteOrders();
                    WriteLine($"{deletedOrders} pedidos eliminados.");
                    WriteLine();
                    CrudFuntions.ListOrdersWithHighlight();
                    break;
                case "2":
                    CrudFuntions.ListTeachers();
                    int deletedTeachers = CrudFuntions.DeleteTeachers();
                    WriteLine($"{deletedTeachers} maestros eliminados.");
                    WriteLine();
                    CrudFuntions.ListTeachers();
                    break;
                case "3":
                    CrudFuntions.ListInventoryManager();
                    int deletedInventoryManager = CrudFuntions.DeleteInventoryManager();
                    WriteLine($"{deletedInventoryManager} almacenistas eliminados.");
                    WriteLine();
                    CrudFuntions.ListInventoryManager();
                    break;
                case "4":
                    CrudFuntions.ListStudents();
                    int deletedStudents = CrudFuntions.DeleteStudents();
                    WriteLine($"{deletedStudents} estudiantes eliminados.");
                    WriteLine();
                    CrudFuntions.ListStudents();
                    break;
                    /*
                case "5":
                    CrudFuntions.ReadMantenimientos();
                    int deletedMat = CrudFuntions.DeleteMant();
                    WriteLine($"{deletedMat} mantenimientos eliminados.");
                    WriteLine();
                    CrudFuntions.ReadMantenimientos();
                    break;
                    */
                case "6":
                    CrudFuntions.ListOrdersWithHighlight();
                    int updateOrders = CrudFuntions.UpdateOrders();
                    WriteLine($"{updateOrders} pedidos modificados.");
                    WriteLine();
                    CrudFuntions.ListOrdersWithHighlight();
                    break;
                case "7":
                    CrudFuntions.ListTeachers();
                    int updateTeachers = CrudFuntions.UpdateDataUsers(1);
                    WriteLine($"{updateTeachers} maestros modificados.");
                    WriteLine();
                    CrudFuntions.ListTeachers();
                    break;
                case "8":
                    CrudFuntions.ListInventoryManager();
                    int updateInventoryManager = CrudFuntions.UpdateDataUsers(2);
                    WriteLine($"{updateInventoryManager} almacenistas modificados.");
                    WriteLine();
                    CrudFuntions.ListInventoryManager();
                    break;
                case "9":
                    CrudFuntions.ListStudents();
                    int updateStudents = CrudFuntions.UpdateDataUsers(3);
                    WriteLine($"{updateStudents} estudiantes modificados.");
                    WriteLine();
                    CrudFuntions.ListStudents();
                    break;
                case "10":
                    break;
                case "11":
                    CrudFuntions.OrderMaterial(4,coordinador.UsuarioId);
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
                    CrudFuntions.NewMant();
                    break;
                case "16":
                    CrudFuntions.NewReportMant();
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