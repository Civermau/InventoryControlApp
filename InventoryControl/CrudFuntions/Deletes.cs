using AlmacenDataContext;
using AlmacenSQLiteEntities;

public static partial class CrudFunctions
{
    //TODO: This method MUST BE CHECKED

    /// <summary>
    /// Deletes an entity of type T from the database and handles cascading deletions
    /// for related entities based on the entity type.
    /// </summary>
    /// <typeparam name="T">The type of entity to be deleted.</typeparam>
    /// <param name="id">The unique identifier of the entity to be deleted.</param>
    /// <returns>The number of affected rows in the database after the deletion operation.</returns>
    /// <remarks>
    /// This method is designed to handle cascading deletions for specific entity types.
    /// If T is Material, it will delete associated DescPedidos and ReporteMantenimientos.
    /// If T is Pedido, it will delete associated DescPedidos.
    /// If T is Mantenimiento, it will delete associated ReporteMantenimientos.
    /// </remarks>
    public static int DeleteEntity<T>(int id) where T : class
    {
        using (Almacen db = new Almacen())
        {
            var entity = db.Set<T>().Find(id);

            if (entity is null)
            {
                WriteLine($"No se encontró un {typeof(T).Name} para eliminar");
                return 0;
            }
            else
            {
                // Delete related entities based on the type T
                if (typeof(T) == typeof(Material))
                {
                    // Delete associated DescPedidos and ReporteMantenimientos
                    IQueryable<DescPedido> descPedidos = db.DescPedidos!.Where(dp => dp.MaterialId == id);
                    db.DescPedidos.RemoveRange(descPedidos);

                    IQueryable<ReporteMantenimiento> reportes = db.ReporteMantenimientos!.Where(r => r.MaterialId == id);
                    db.ReporteMantenimientos.RemoveRange(reportes);
                }
                else if (typeof(T) == typeof(Pedido))
                {
                    // Delete associated DescPedidos
                    IQueryable<DescPedido> descPedidos = db.DescPedidos!.Where(dp => dp.PedidoId == id);
                    db.DescPedidos.RemoveRange(descPedidos);
                }
                else if (typeof(T) == typeof(Mantenimiento))
                {
                    // Delete associated ReporteMantenimientos
                    IQueryable<ReporteMantenimiento> reportes = db.ReporteMantenimientos!.Where(r => r.MantenimientoId == id);
                    db.ReporteMantenimientos.RemoveRange(reportes);
                }

                // Delete entity in respective table
                db.Set<T>().Remove(entity);
            }

            int affected = db.SaveChanges();
            return affected;
        }
    }

    /// <summary>
    /// Deletes a person entity (Estudiante, Almacenista, or Docente) and associated records
    /// from the database, including DescPedidos and ReporteMantenimientos.
    /// </summary>
    /// <typeparam name="T">The type of person entity (Estudiante, Almacenista, or Docente).</typeparam>
    /// <param name="id">The unique identifier of the person to be deleted.</param>
    /// <returns>The number of affected rows in the database after the deletion operation.</returns>
    /// <remarks>
    /// This method is designed to handle cascading deletions for person entities.
    /// It deletes associated DescPedidos and ReporteMantenimientos for Estudiante and Docente entities.
    /// </remarks>
    public static int DeletePerson<T>(int id) where T : class
    {
        using (Almacen db = new Almacen())
        {
            Usuario? usuario = db.Usuarios!.FirstOrDefault(u => u.UsuarioId == id);

            if (usuario is null)
            {
                WriteLine("No se encontró un usuario para eliminar");
                return 0;
            }

            var entity = db.Set<T>().Find(id);

            if (entity is null)
            {
                WriteLine($"No se encontró un {typeof(T).Name} para eliminar");
                return 0;
            }
            else
            {
                // Delete related entities based on the type T
                if (typeof(T) == typeof(Estudiante))
                {
                    // Delete associated pedidos and desc_pedidos
                    IQueryable<Pedido> pedidos = db.Pedidos!.Where(p => p.EstudianteId == id);
                    IQueryable<DescPedido> descPedidos = db.DescPedidos!.Where(dp => pedidos.Any(p => p.PedidoId == dp.PedidoId));

                    db.DescPedidos.RemoveRange(descPedidos);
                    db.Pedidos.RemoveRange(pedidos);
                }
                else if (typeof(T) == typeof(Docente))
                {
                    // Delete related entities for Docente (if any)
                    IQueryable<Pedido> pedidos = db.Pedidos!.Where(p => p.DocenteId == id);
                    IQueryable<DescPedido> descPedidos = db.DescPedidos!.Where(dp => pedidos.Any(p => p.PedidoId == dp.PedidoId));

                    db.DescPedidos.RemoveRange(descPedidos);
                    db.Pedidos.RemoveRange(pedidos);
                }

                // Delete user in respective table
                db.Set<T>().Remove(entity);

                // Delete user account
                db.Usuarios.Remove(usuario);
            }

            int affected = db.SaveChanges();
            return affected;
        }
    }
    #region Almost Deprecated / Delete Methods
    public static int DeleteMaterials()
    {
        using (Almacen db = new())
        {
            string? input;
            int id;
            do
            {
                WriteLine("Ingresa el modelo a eliminar:");
                input = ReadLine();
                id = UI.GetModeloID(input);
            } while (UI.ModeloValidation(id) == false);
            Material? materiales = db.Materiales!.FirstOrDefault(m => m.MaterialId == id);
            if ((materiales is null))
            {
                WriteLine("No se encontro un material para eliminar");
            }
            else
            {
                if (db.Materiales is null) return 0;
                db.Materiales.RemoveRange(materiales);
            }
            int affected = db.SaveChanges();
            return affected;
        }
    }

    public static int DeleteOrders()
    {
        using (Almacen db = new())
        {
            string? input;
            int pedidoId;
            do
            {
                WriteLine("Que pedido quieres eliminar?");
                input = ReadLine();
                pedidoId = UI.GetPedidoID(input);
            } while (UI.PedidoValidation(pedidoId) == false);
            DescPedido? descPedido = db.DescPedidos.FirstOrDefault(p => p.PedidoId == pedidoId);
            Pedido? pedidos = db.Pedidos!.FirstOrDefault(p => p.PedidoId == pedidoId);
            if ((pedidos is null))
            {
                WriteLine("No se encontro un pedido para eliminar");
                return 0;
            }
            else
            {
                if (db.DescPedidos is null) return 0;
                db.DescPedidos.RemoveRange(descPedido);
                if (db.Pedidos is null) return 0;
                db.Pedidos.RemoveRange(pedidos);
            }
            int affected = db.SaveChanges();
            return affected;
        }
    }

    public static int DeleteTeachers()
    {
        using (Almacen db = new())
        {
            string input;
            int id;

            do
            {
                WriteLine("De cuál maestro quieres eliminar su información?");
                input = ReadLine();
                id = UI.GetDocenteID(input);
            } while (UI.DocenteValidation(id) == false);

            Docente docente = db.Docentes!.FirstOrDefault(p => p.DocenteId == id);

            if (docente is null)
            {
                WriteLine("No se encontró un docente para eliminar");
                return 0;
            }
            else
            {

                // Obtener los pedidos y desc_pedidos asociados al docente
                IQueryable<Pedido> pedidos = db.Pedidos!.Where(p => p.DocenteId == id);
                IQueryable<DescPedido> descPedidos = db.DescPedidos!.Where(dp => pedidos.Any(p => p.PedidoId == dp.PedidoId));

                // Eliminar los desc_pedidos asociados
                db.DescPedidos.RemoveRange(descPedidos);

                // Eliminar los pedidos asociados
                db.Pedidos.RemoveRange(pedidos);

                // Eliminar el usuario asociado al docente
                if (docente.Usuario != null)
                {
                    db.Usuarios.Remove(docente.Usuario);
                }

                // Eliminar al docente
                db.Docentes.Remove(docente);
            }

            int affected = db.SaveChanges();
            return affected;
        }
    }

    public static int DeleteInventoryManager()
    {
        using (Almacen db = new())
        {
            string? input;
            int id;
            do
            {
                WriteLine("De cual almacenista quieres eliminar su informacion?");
                input = ReadLine();
                id = UI.GetAlmacenistaID(input);
            } while (UI.AlmacenistaValidation(id) == false);
            Almacenista? almacenistas = db.Almacenistas!.FirstOrDefault(p => p.AlmacenistaId == id);
            if ((almacenistas is null))
            {
                WriteLine("No se encontro un almacenista para eliminar");
                return 0;
            }
            else
            {
                if (almacenistas is null)
                {
                    WriteLine("No se encontró un almacenista para eliminar");
                    return 0;
                }
                else
                {

                    // Eliminar el usuario asociado al almacenista
                    if (almacenistas.Usuario != null)
                    {
                        db.Usuarios.Remove(almacenistas.Usuario);
                    }

                    // Eliminar al almacenista
                    db.Almacenistas.Remove(almacenistas);
                }
            }
            int affected = db.SaveChanges();
            return affected;
        }
    }

    public static int DeleteStudents()
    {
        using (Almacen db = new())
        {
            string? input;
            int id;
            do
            {
                WriteLine("De cual estudiante quieres eliminar su informacion?");
                input = ReadLine();
                id = UI.GetEstudianteID(input);
            } while (UI.EstudianteValidation(id) == false);
            Estudiante? estudiantes = db.Estudiantes!.FirstOrDefault(p => p.EstudianteId == id);
            if (estudiantes is null)
            {
                WriteLine("No se encontró un docente para eliminar");
                return 0;
            }
            else
            {

                // Obtener los pedidos y desc_pedidos asociados al estudiante
                IQueryable<Pedido> pedidos = db.Pedidos!.Where(p => p.EstudianteId == id);
                IQueryable<DescPedido> descPedidos = db.DescPedidos!.Where(dp => pedidos.Any(p => p.PedidoId == dp.PedidoId));

                // Eliminar los desc_pedidos asociados
                db.DescPedidos.RemoveRange(descPedidos);

                // Eliminar los pedidos asociados
                db.Pedidos.RemoveRange(pedidos);

                // Eliminar el usuario asociado al estudiante
                if (estudiantes.Usuario != null)
                {
                    db.Usuarios.Remove(estudiantes.Usuario);
                }

                // Eliminar al estudiante
                db.Estudiantes.Remove(estudiantes);
            }
            int affected = db.SaveChanges();
            return affected;
        }
    }

    public static int DeleteMant()
    {
        using (Almacen db = new())
        {
            string? input;
            int id;
            do
            {
                WriteLine("De cual mantenimiento quieres eliminar su informacion?");
                input = ReadLine();
                id = UI.GetEstudianteID(input);
            } while (UI.EstudianteValidation(id) == false);
            Mantenimiento? mantenimiento = db.Mantenimientos!.FirstOrDefault(p => p.MantenimientoId == id);
            if ((mantenimiento is null))
            {
                WriteLine("No se encontro un mantenimiento para eliminar");
                return 0;
            }
            else
            {
                if (db.Mantenimientos is null) return 0;
                db.Mantenimientos.RemoveRange(mantenimiento);
            }
            int affected = db.SaveChanges();
            return affected;
        }
    }
    #endregion
}