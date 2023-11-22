using AlmacenDataContext;
using AlmacenSQLiteEntities;

public static partial class CrudFunctions
{
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
}