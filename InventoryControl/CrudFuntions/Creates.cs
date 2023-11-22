using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class CrudFunctions
{
    public static void AddEntity<T>(T entity, Usuario usuario) where T : class
    {
        using (Almacen db = new Almacen())
        {
            string idPropertyName = typeof(T).Name + "Id";

            var idProperty = typeof(T).GetProperty(idPropertyName);

            string correoPropertyName = "Correo";

            var correoProperty = typeof(T).GetProperty(correoPropertyName);

            // Get the ID and correo values of the entity
            int entityId = (int)idProperty.GetValue(entity);
            string correoValue = (string)correoProperty.GetValue(entity);

            // Check if an entity with the same ID or correo already exists
            var checkEntity = db.Set<T>().AsEnumerable().FirstOrDefault(e => (int)idProperty.GetValue(e) == entityId || (string)correoProperty.GetValue(e) == correoValue);

            if (checkEntity != null)
            {
                WriteLine($"Datos de {typeof(T).Name} ya existentes");
                return;
            }

            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int userID = lastUserId.HasValue ? lastUserId.Value + 1 : 1;

            usuario.UsuarioId = userID;

            // Set the ID for the entity if it is not set
            if (entityId == 0)
            {
                idProperty.SetValue(entity, userID);
            }

            string userIdName = "UsuarioId";
            var userId = typeof(T).GetProperty(userIdName);
            userId.SetValue(entity, userID);


            Clear();
            
            db.Usuarios.Add(usuario);
            

            db.Set<T>().Add(entity);
            db.SaveChanges();
        }
    }

    /// <summary>
    /// Add a new entity method, you don't need to worry about using the specific method since this one works for every entity
    /// </summary>
    /// <remarks>
    /// You just need to write AddEntity(thingYouWantToStore) since it's a generic method, it'll automatically detect it
    /// </remarks>
    /// <typeparam name="T"></typeparam>
    /// <param name="entity"></param>
    /// <returns>
    /// Stores the entity in the DB
    /// </returns>
    public static void AddEntity<T>(T entity) where T : class
    {
        using (Almacen db = new())
        {
            Clear();
            db.Set<T>().Add(entity);
            db.SaveChanges();
        }
    }
    
    public static void NewMant()
    {
        Mantenimiento mantenimiento = GetDataOfMantenimiento();
        AddEntity(mantenimiento);
    }

    public static void NewReportMant()
    {
        ReporteMantenimiento reporteMantenimiento = GetDataOfReportMant();
        AddEntity(reporteMantenimiento);
    }

    public static void NewMaterial()
    {
        Program.SectionTitle("Vamos a ingresar un nuevo material");
        Material material = GetDataOfMaterial();
        AddEntity(material);
    }



    public static void AddPedido(Pedido pedido, DescPedido descPedido){
        using (Almacen db = new()){
            int? lastPedidoId = db.Pedidos.OrderByDescending(u => u.PedidoId).Select(u => u.PedidoId).FirstOrDefault();
            int pedidoID = lastPedidoId.HasValue ? lastPedidoId.Value + 1 : 1;
            pedido.PedidoId = pedidoID;
            descPedido.PedidoId = pedidoID;

            int? lastDesPedidoId = db.DescPedidos.OrderByDescending(u => u.DescPedidoId).Select(u => u.DescPedidoId).FirstOrDefault();
            int desPedidoID = lastDesPedidoId.HasValue ? lastDesPedidoId.Value + 1 : 1;
            descPedido.DescPedidoId = desPedidoID;
            WriteLine($"{pedido.PedidoId} | {descPedido.PedidoId}");
            
            var CheckStudent = db.Pedidos.FirstOrDefault(r => r.PedidoId == pedido.PedidoId);
            if (CheckStudent != null)
            {
                WriteLine("Datos de docentes ya existentes");
                return;
            }
            try
            {
                db.Pedidos.Add(pedido);
                db.SaveChanges();
                db.DescPedidos.Add(descPedido);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                WriteLine($"{e}");
                throw;
            }
        }
    }
}