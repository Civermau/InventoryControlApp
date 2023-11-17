using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class CrudFunctions
{
    public static int UpdateOrders(){
        using(Almacen db = new()){
            string? input;
            int LabID;
            int pedidoId;
            do{
                WriteLine("Que pedido quieres modificar?");
                input = ReadLine();
                pedidoId = UI.GetPedidoID(input);
            } while (UI.PedidoValidation(pedidoId) == false);
            Pedido? pedido = db.Pedidos!.FirstOrDefault(p => p.PedidoId == pedidoId);
            if((pedido is null)){
                Program.Fail("No se encontro un pedido para modificar");
                return 0;
            }
            else{
                Program.SectionTitle("¿Que quieres modificar?");
                WriteLine("1. Fecha");
                WriteLine("2. Laboratorio");
                WriteLine("3. Hora de Entrega");
                WriteLine("4. Hora de Devolucion");
                WriteLine("5. Estado de una solicitud");
                WriteLine("6. Cancelar modificacion");
                string? opcion = ReadLine();
                
                switch(opcion)
                {
                    case "1":
                    {
                        WriteLine($"Fecha actual: {pedido.Fecha}");
                        do{
                            WriteLine("Ingresa la fecha modificada: ");
                            input = ReadLine();
                        }while(UI.DateValidation(input) == false);
                        pedido.Fecha = DateTime.Parse($"{input} {pedido.HoraEntrega:HH:mm:ss}");
                        pedido.HoraEntrega = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {pedido.HoraEntrega:HH:mm:ss}");
                        pedido.HoraDevolucion = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {pedido.HoraDevolucion:HH:mm:ss}");
                        break;
                    }
                    case "2":
                    {
                        WriteLine($"Laboratorio actual: {pedido.Laboratorio.Nombre}");
                        do{
                            ListLaboratories();
                            WriteLine("Ingresa el laboratorio modificado:");
                            input = ReadLine();
                            LabID = UI.GetLabID(input);
                        } while (UI.LabValidation(LabID) == false);
                        pedido.LaboratorioId = LabID;
                        break;
                    }
                    case "3":
                    {
                        WriteLine($"Hora de entrega actual: {pedido.HoraEntrega:HH:mm:ss}");
                        do{
                            WriteLine("Ingresa la hora de entrega modificada:");
                            input = ReadLine();
                        } while (UI.HourValidation(input) == false);
                        pedido.HoraEntrega = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {input}");
                        pedido.Fecha = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {pedido.HoraEntrega:HH:mm:ss}");
                        break;
                    }
                    case "4":
                    {
                        WriteLine($"Hora de devolucion actual: {pedido.HoraDevolucion:HH:mm:ss}");
                        do{
                            WriteLine("Ingresa la hora de devolucion modificada:");
                            input = ReadLine();
                        } while (UI.HourValidation(input) == false);
                        pedido.HoraDevolucion = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {input}");
                        break;
                    }
                    case "5":
                        WriteLine($"Estado actual: {(pedido.Estado ? "SI" : "NO")}");
                        do{
                            WriteLine("¿Quiere aprobar o denegar el pedido?");
                            WriteLine("1. Aprovar");
                            WriteLine("2. Denegar");
                            input = ReadLine();
                        } while (input == "1\n" || input == "2\n");

                        input = input!.Trim();

                        if(input == "1"){
                            pedido.Estado = true;
                            Program.SectionTitle("Aprovado");
                        }
                        else if(input == "2"){
                            pedido.Estado = false;
                            db.SaveChanges();
                            Program.Fail("Denegado");
                        }
                        break;
                    case "6":
                        Program.Fail("Modificacion cancelada");
                        break;
                    default:
                        WriteLine("Opcion invalida");
                        break;
                }
                int affected = db.SaveChanges();
                return affected;
            }
        }
    }
    
    public static int UpdateDataUsers(int typeUser){
        using(Almacen db = new()){
            Docente? docente = new Docente();
            Almacenista? almacenista = new Almacenista();
            Estudiante? estudiante = new Estudiante();

            string? input;
            int id;
            if(typeUser == 1){
                do{
                    WriteLine("De cual maestro quieres modificar su informacion?");
                    input = ReadLine();
                    id = UI.GetDocenteID(input);
                } while (UI.DocenteValidation(id) == false);
                docente = db.Docentes!.FirstOrDefault(d => d.DocenteId == id);

            }
            else if(typeUser == 2){
                do{
                    WriteLine("De cual almacenista quieres modificar su informacion?");
                    input = ReadLine();
                    id = UI.GetAlmacenistaID(input);
                } while (UI.AlmacenistaValidation(id) == false);
                almacenista = db.Almacenistas!.FirstOrDefault(d => d.AlmacenistaId == id);
            }
            else if(typeUser == 3){
                do{
                    WriteLine("De cual estudiante quieres modificar su informacion?");
                    input = ReadLine();
                    id = UI.GetEstudianteID(input);
                } while (UI.EstudianteValidation(id) == false);
                estudiante = db.Estudiantes!.FirstOrDefault(d => d.EstudianteId == id);
            }
            if((docente is null) || (almacenista is null) || (estudiante is null)){
                Program.Fail("No se encontro un usuario para modificar");
                return 0;
            }
            else{
                Program.SectionTitle("¿Que quieres modificar?");
                WriteLine("1. Nombre");
                WriteLine("2. Apellido Paterno");
                WriteLine("3. Apellido Materno");
                WriteLine("4. Plantel");
                WriteLine("5. Nombre de Usuario");
                if(typeUser == 1 || typeUser == 2){
                    WriteLine("6. Correo");
                }
                if(typeUser == 3){
                    WriteLine("7. Semestre");
                    WriteLine("8. Grupo");
                    WriteLine("9. Adeudo");
                }
                WriteLine("10. Cancelar modificacion");
                string? opcion = ReadLine();
                
                switch(opcion)
                {
                    case "1":
                    {
                        if(typeUser == 1){
                            WriteLine($"Nombre actual: {docente.Nombre}");
                            do{
                                WriteLine("Ingresa el nombre modificado: ");
                                docente.Nombre = ReadLine();
                            }while(UI.NameValidation(docente.Nombre) == false);
                        } 
                        else if(typeUser == 2){
                            WriteLine($"Nombre actual: {almacenista.Nombre}");
                            do{
                                WriteLine("Ingresa el nombre modificado: ");
                                almacenista.Nombre = ReadLine();
                            }while(UI.NameValidation(almacenista.Nombre) == false);
                        }
                        else if(typeUser == 3){
                            WriteLine($"Nombre actual: {estudiante.Nombre}");
                            do{
                                WriteLine("Ingresa el nombre modificado: ");
                                estudiante.Nombre = ReadLine();
                            }while(UI.NameValidation(estudiante.Nombre) == false);
                        }
                        
                        break;
                    }
                    case "2":
                    {
                        if(typeUser == 1){
                            WriteLine($"Apellido Paterno actual: {docente.ApellidoPaterno}");
                            do{
                                WriteLine("Ingresa el apellido paterno modificado:");
                                docente.ApellidoPaterno = ReadLine();
                            }while(UI.NameValidation(docente.ApellidoPaterno) == false);

                        }
                        else if(typeUser == 2){
                            WriteLine($"Apellido Paterno actual: {almacenista.ApellidoPaterno}");
                            do{
                                WriteLine("Ingresa el apellido paterno modificado:");
                                almacenista.ApellidoPaterno = ReadLine();
                            }while(UI.NameValidation(almacenista.ApellidoPaterno) == false);
                        }
                        else if(typeUser == 3){
                            WriteLine($"Apellido Paterno actual: {estudiante.ApellidoPaterno}");
                            do{
                                WriteLine("Ingresa el apellido paterno modificado:");
                                estudiante.ApellidoPaterno = ReadLine();
                            }while(UI.NameValidation(estudiante.ApellidoPaterno) == false);
                        }
                        break;
                    }
                    case "3":
                    {
                        if(typeUser == 1){
                            WriteLine($"Apellido Materno actual: {docente.ApellidoMaterno}");
                            do{
                                WriteLine("Ingresa el apellido materno modificado:");
                                docente.ApellidoMaterno = ReadLine();
                            }while(UI.NameValidation(docente.ApellidoMaterno) == false);
                        }
                        else if(typeUser == 2){
                            WriteLine($"Apellido Materno actual: {almacenista.ApellidoMaterno}");
                            do{
                                WriteLine("Ingresa el apellido materno modificado:");
                                almacenista.ApellidoMaterno = ReadLine();
                            }while(UI.NameValidation(almacenista.ApellidoMaterno) == false);
                        }
                        else if(typeUser == 3){
                            WriteLine($"Apellido Materno actual: {estudiante.ApellidoMaterno}");
                            do{
                                WriteLine("Ingresa el apellido materno modificado:");
                                estudiante.ApellidoMaterno = ReadLine();
                            }while(UI.NameValidation(estudiante.ApellidoMaterno) == false);
                        }
                        break;
                    }
                    case "4":
                        if(typeUser == 1){
                            WriteLine($"Plantel actual: {docente.Plantel.Nombre}");
                            do{
                                WriteLine("Plantel: ");
                                WriteLine("1. Colomos");
                                WriteLine("2. Tonalá");
                                WriteLine("3. Río Santiago");
                                input = ReadLine();
                                id = int.Parse(input);
                            } while (id < 1 || id > 3);

                            docente.PlantelId = id;
                        }
                        else if(typeUser == 2){
                            WriteLine($"Plantel actual: {almacenista.Plantel.Nombre}");
                            do{
                                WriteLine("Plantel: ");
                                WriteLine("1. Colomos");
                                WriteLine("2. Tonalá");
                                WriteLine("3. Río Santiago");
                                input = ReadLine();
                                id = int.Parse(input);
                            } while (id < 1 || id > 3);

                            almacenista.PlantelId = id;
                        }
                        else if(typeUser == 3){
                            WriteLine($"Plantel actual: {estudiante.Plantel.Nombre}");
                            do{
                                WriteLine("Plantel: ");
                                WriteLine("1. Colomos");
                                WriteLine("2. Tonalá");
                                WriteLine("3. Río Santiago");
                                input = ReadLine();
                                id = int.Parse(input);
                            } while (id < 1 || id > 3);

                            estudiante.PlantelId = id;
                        }
                        break;
                    case "5":
                        if(typeUser == 1){
                            WriteLine($"Nombre de usuario actual: {docente.Usuario.Usuario1}");
                            do{
                                WriteLine("Ingresa el Nombre de usuario modificada:");
                                docente.Usuario.Usuario1 = ReadLine();
                            } while (UI.NameValidation(docente.Usuario.Usuario1) == false);
                        }
                        else if(typeUser == 2){
                            WriteLine($"Nombre de usuario actual: {almacenista.Usuario.Usuario1}");
                            do{
                                WriteLine("Ingresa el Nombre de usuario modificada:");
                                almacenista.Usuario.Usuario1 = ReadLine();
                            } while (UI.NameValidation(almacenista.Usuario.Usuario1) == false);
                        }
                        else if(typeUser == 3){
                            WriteLine($"Nombre de usuario actual: {estudiante.Usuario.Usuario1}");
                            do{
                                WriteLine("Ingresa el Nombre de usuario modificada:");
                                estudiante.Usuario.Usuario1 = ReadLine();
                            } while (UI.NameValidation(estudiante.Usuario.Usuario1) == false);
                        }
                        break;
                    case "6":
                    {
                        if(typeUser == 1){
                            WriteLine($"Correo actual: {docente.Correo}");
                            do{
                                WriteLine("Ingresa el correo electronico modificada:");
                                docente.Correo = ReadLine();
                            } while (!UI.EmailValidation(docente.Correo));
                        }
                        else if(typeUser == 2){
                            WriteLine($"Correo actual: {almacenista.Correo}");
                            do{
                                WriteLine("Ingresa el correo electronico modificada:");
                                almacenista.Correo = ReadLine();
                            } while (!UI.EmailValidation(almacenista.Correo));
                        }
                        break;
                    }
                    case "7":
                        if(typeUser == 3){
                            WriteLine($"Semestre actual: {estudiante.SemestreId}");
                            do{
                                WriteLine("Ingresa el Semestre modificado:");
                                input = ReadLine();
                                id = int.Parse(input);
                            } while (id < 1 || id > 8);

                            estudiante.SemestreId=id;
                        }
                        break;
                    case "8":
                        if(typeUser == 3){
                            WriteLine($"Grupo actual: {estudiante.Grupo.Nombre}");
                            do{
                                WriteLine("Ingresa el Grupo modificado:");
                                estudiante.Grupo.Nombre = ReadLine();
                                estudiante.GrupoId = (int)UI.GetGroupID(estudiante.Grupo.Nombre);
                            } while (UI.GroupVerification((int)estudiante.GrupoId) != 01);
                        }
                        break;
                    case "9":
                        if(typeUser == 3){
                            decimal adeudo;
                            WriteLine($"Adeudo actual: {estudiante.Adeudo}");
                            do{
                                WriteLine("Ingresa el adeudo modificado:");
                                input = ReadLine();
                            }while(!decimal.TryParse(input, out adeudo) && adeudo >= 0);

                            estudiante.Adeudo = adeudo;
                        }
                        break;
                    case "10":
                        Program.Fail("Modificacion cancelada");
                        break;
                    default:
                        WriteLine("Opcion invalida");
                        break;
                }
                int affected = db.SaveChanges();
                return affected;
            }
        }
    }

    public static int UpdateMaterials(){
        using(Almacen db = new()){
            Material material = new Material();
            string? input;
            int id;
            do{
                WriteLine("Que material quieres modificar?");
                input = ReadLine();
                id = UI.GetMaterialForID(input);
            } while (UI.MaterialValidation(id) == false);
            material = db.Materiales!.FirstOrDefault(p => p.MaterialId == id);
            if((material is null)){
                Program.Fail("No se encontro un material para modificar");
                return 0;
            }
            else{
                Program.SectionTitle("¿Que quieres modificar?");
                WriteLine("1. Modelo");
                WriteLine("2. Descripcion");
                WriteLine("3. Año de entrada");
                WriteLine("4. Marca");
                WriteLine("5. Categoria");
                WriteLine("6. Plantel");
                WriteLine("7. Serie");
                WriteLine("8. Valor Historico");
                WriteLine("9. Condicion");
                WriteLine("10. Cancelar modificacion");
                string? opcion = ReadLine();
                
                switch(opcion)
                {
                    case "1":
                    {
                        WriteLine($"Modelo actual: {material.Modelo.Nombre}");
                        ReadModelos();
                        GeneralSearchModels();
                        do{
                            WriteLine("Ingresa el modelo modificada:");
                            input = ReadLine();
                            id = UI.GetModeloID(input);
                        } while (UI.ModeloValidation(id) == false);
                        material.ModeloId = id;
                        break;
                    }
                    case "2":
                    {
                        WriteLine($"Descripcion actual: {material.Descripcion}");
                        do{
                            WriteLine("Ingresa la descripcion modificada:");
                            material.Descripcion = ReadLine();
                        } while (material.Descripcion.Length > 255);
                        break;
                    }
                    case "3":
                    {
                        WriteLine($"Año de entrada actual: {material.YearEntrada}");
                        do{
                            WriteLine("Ingresa el año de entrada modificado:");
                            input = ReadLine();
                        }while(!int.TryParse(input, out _));
                        material.YearEntrada = int.Parse(input);
                        break;
                    }
                    case "4":
                    {
                        WriteLine($"Marca actual: {material.Marca.Nombre}");
                        ReadMarcas();
                        GeneralSearchMarcas();
                        do{
                            WriteLine("Ingresa la marca modificada:");
                            input = ReadLine();
                            id = UI.GetMarcaID(input);
                        } while (UI.MarcaValidation(id) == false);
                        material.MarcaId = id;
                        break;
                    }
                    case "5":
                        WriteLine($"Categoria actual: {material.Categoria.Nombre}");
                        ReadCategorias();
                        GeneralSearchCategory(4);
                        do{
                            WriteLine("Ingresa la categoria modificada:");
                            input = ReadLine();
                            id = UI.GetCategoriaID(input);
                        } while (UI.CategoriaValidation(id) == false);
                        material.CategoriaId = id;
                        break;
                    case "6":
                        WriteLine($"Plantel actual: {material.Plantel.Nombre}");
                        do{
                            WriteLine("Plantel: ");
                            WriteLine("1. Colomos");
                            WriteLine("2. Tonalá");
                            WriteLine("3. Río Santiago");
                            input = ReadLine();
                            if (!int.TryParse(input, out _))
                            {
                                WriteLine("Opción invalida");
                            }
                            material.PlantelId = int.Parse(input);
                        } while (material.PlantelId < 1 || material.PlantelId > 3);
                        break;
                    case "7":
                        WriteLine($"Numero de serie actual: {material.Serie}");
                        do{
                            WriteLine("Ingresa el numero de serie a modificar:");
                            material.Serie = ReadLine();
                        } while (material.Serie.Length > 255);
                        break;
                    case "8":
                        WriteLine($"Valor historico actual: {material.ValorHistorico}");
                        do{
                            WriteLine("Ingresa el valor historico modificado:");
                            input = ReadLine();
                        }while(!decimal.TryParse(input, out _));
                        material.ValorHistorico = decimal.Parse(input);
                        break;
                    case "9":
                        WriteLine($"Condicion actual: {material.Condicion}");
                        // Condicion: 1 disponible, 2 no disponible
                        do{
                            WriteLine("Condicion del material");
                            WriteLine("1. Disponible para pedidos");
                            WriteLine("2. No disponible para pedidos");
                            input = ReadLine();
                        } while (input == "1\n" || input == "2\n");

                        input = input!.Trim();

                        if(input == "1"){
                            material.Condicion = input;
                            Program.SectionTitle("Disponible");
                        }
                        else if(input == "2"){
                            material.Condicion = input;
                            db.SaveChanges();
                            Program.Fail("No disponible");
                        }
                        else{
                            Program.Fail("No existe la condicion");
                        }
                        break;
                    case "10":
                        Program.Fail("Modificacion cancelada");
                        break;
                    default:
                        WriteLine("Opcion invalida");
                        break;
                }
                int affected = db.SaveChanges();
                return affected;
            }
        }
    }
}
