using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class CrudFunctions
{
    public static int UpdateOrders(Pedido updatedOrder)
    {
        using (Almacen db = new Almacen())
        {
            Pedido existingOrder = db.Pedidos.FirstOrDefault(p => p.PedidoId == updatedOrder.PedidoId);

            if (existingOrder != null)
            {
                // Sobreescribir los campos del pedido existente con los datos actualizados
                existingOrder.Fecha = updatedOrder.Fecha;
                existingOrder.LaboratorioId = updatedOrder.LaboratorioId;
                existingOrder.HoraEntrega = updatedOrder.HoraEntrega;
                existingOrder.HoraDevolucion = updatedOrder.HoraDevolucion;
                existingOrder.EstudianteId = updatedOrder.EstudianteId;
                existingOrder.DocenteId = updatedOrder.DocenteId;
                existingOrder.CoordinadorId = updatedOrder.CoordinadorId;
                existingOrder.Estado = updatedOrder.Estado;

                // Guardar los cambios en la base de datos
                int affected = db.SaveChanges();

                WriteLine("Pedido actualizado exitosamente.");
                return affected;
            }
            else
            {
                WriteLine("No se encontró ningún pedido con la ID proporcionada.");
                return 0;
            }
        }
    }

    public static int UpdateDataUsers<T>(T newUser) where T : class
    {
        using (Almacen db = new Almacen())
        {
            string idPropertyName = typeof(T).Name + "Id";

            var idProperty = typeof(T).GetProperty(idPropertyName);

            int entityId = (int)idProperty.GetValue(newUser);

            var existingUser = db.Set<T>().Find(entityId);

            if (existingUser != null)
            {
                var properties = typeof(T).GetProperties();

                foreach (var property in properties)
                {
                    if (property.Name != idPropertyName)
                    {

                        var newValue = property.GetValue(newUser);

                        property.SetValue(existingUser, newValue);
                    }
                }

                int affected = db.SaveChanges();

                WriteLine($"{typeof(T).Name} actualizado exitosamente.");
                return affected;
            }
            else
            {
                WriteLine($"No se encontró ningún {typeof(T).Name} con la ID proporcionada.");
                return 0;
            }
        }
    }


    public static int UpdateDataUsesrs(int typeUser){
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

    public static int UpdateMaterial(Material updatedMaterial)
    {
        using (Almacen db = new Almacen())
        {
            Material existingMaterial = db.Materiales.FirstOrDefault(m => m.MaterialId == updatedMaterial.MaterialId);

            if (existingMaterial != null)
            {
                // Sobreescribir los campos del material existente con los datos actualizados
                existingMaterial.ModeloId = updatedMaterial.ModeloId;
                existingMaterial.Descripcion = updatedMaterial.Descripcion;
                existingMaterial.ValorHistorico = updatedMaterial.ValorHistorico;
                existingMaterial.YearEntrada = updatedMaterial.YearEntrada;
                existingMaterial.MarcaId = updatedMaterial.MarcaId;
                existingMaterial.CategoriaId = updatedMaterial.CategoriaId;
                existingMaterial.PlantelId = updatedMaterial.PlantelId;
                existingMaterial.Serie = updatedMaterial.Serie;

                // Guardar los cambios en la base de datos
                int affected = db.SaveChanges();

                WriteLine("Material actualizado exitosamente.");
                return affected;
            }
            else
            {
                WriteLine("No se encontró ningún material con la ID proporcionada.");
                return 0;
            }
        }
    }

}
