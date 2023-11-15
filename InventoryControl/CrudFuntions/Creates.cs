using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class CrudFuntions {
    public static void AddStudent(Estudiante estudiante, Usuario usuario) {
        using (Almacen db = new()) {
            var CheckStudent = db.Estudiantes.FirstOrDefault(r => r.EstudianteId == estudiante.EstudianteId || r.Correo == estudiante.Correo);
            if (CheckStudent != null)
            {
                WriteLine("Datos de usuario ya existentes");
                return;
            }
            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int UserID = lastUserId.HasValue ? lastUserId.Value + 1 : 1;
            usuario.UsuarioId = UserID;
            estudiante.UsuarioId = UserID;
            Clear();
            db.Usuarios.Add(usuario);
            db.SaveChanges();
            db.Estudiantes.Add(estudiante);
            db.SaveChanges();
        }
    }

    public static void AddTeacher(Docente docente, Usuario usuario) {
        using (Almacen db = new()) {
            var CheckStudent = db.Docentes.FirstOrDefault(r => r.DocenteId == docente.DocenteId || r.Correo == docente.Correo);
            if (CheckStudent != null)
            {
                WriteLine("Datos de docentes ya existentes");
                return;
            }
            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int UserID = lastUserId.HasValue ? lastUserId.Value + 1 : 1;
            int? lastTeacherId = db.Docentes.OrderByDescending(u => u.DocenteId).Select(u => u.DocenteId).FirstOrDefault();
            int TeacherID = lastTeacherId.HasValue ? lastTeacherId.Value + 1 : 1;
            usuario.UsuarioId = UserID;
            docente.UsuarioId = UserID;
            docente.DocenteId = TeacherID;
            Clear();
            db.Usuarios.Add(usuario);
            db.SaveChanges();
            db.Docentes.Add(docente);
            db.SaveChanges();
        }
    }

    public static void AddWarehouseManager(Almacenista almacenista, Usuario usuario) {
        using (Almacen db = new()) {
            var CheckStudent = db.Almacenistas.FirstOrDefault(r => r.AlmacenistaId == almacenista.AlmacenistaId || r.Correo == almacenista.Correo);
            if (CheckStudent != null)
            {
                WriteLine("Datos de almacenista ya existentes");
                return;
            }
            int? lastUserId = db.Usuarios.OrderByDescending(u => u.UsuarioId).Select(u => u.UsuarioId).FirstOrDefault();
            int UserID = lastUserId.HasValue ? lastUserId.Value + 1 : 1;
            int? lastWarehouseManagerId = db.Almacenistas.OrderByDescending(u => u.AlmacenistaId).Select(u => u.AlmacenistaId).FirstOrDefault();
            int WarehouseManagerID = lastWarehouseManagerId.HasValue ? lastWarehouseManagerId.Value + 1 : 1;
            usuario.UsuarioId = UserID;
            almacenista.UsuarioId = UserID;
            almacenista.AlmacenistaId = WarehouseManagerID;
            Clear();
            db.Usuarios.Add(usuario);
            db.SaveChanges();
            db.Almacenistas.Add(almacenista);
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

    #region DeprecatedCode
    /*
    public static void AddMarca(Marca marca) {
        using (Almacen db = new()) {
            Clear();
            db.Marcas.Add(marca);
            db.SaveChanges();
        }
    }

    public static void AddModelo(Modelo modelo) {
        using (Almacen db = new()) {
            Clear();
            db.Modelos.Add(modelo);
            db.SaveChanges();
        }
    }

    public static void AddCategoria(Categoria categoria) {
        using (Almacen db = new()) {
            Clear();
            db.Categorias.Add(categoria);
            db.SaveChanges();
        }
    }

    public static void AddLab(Laboratorio laboratorio) {
        using (Almacen db = new()) {
            Clear();
            db.Laboratorios.Add(laboratorio);
            db.SaveChanges();
        }
    }

    public static void AddMant(Mantenimiento mantenimiento) {
        using (Almacen db = new()) {
            Clear();
            db.Mantenimientos.Add(mantenimiento);
            db.SaveChanges();
        }
    }

    public static void AddMaterial(Material material) {
        using (Almacen db = new Almacen()) {
            Clear();
            db.Materiales.Add(material);
            db.SaveChanges();
        }
    }

    public static void AddGroup(Grupo grupo) {
        using (Almacen db = new Almacen()) {
            Clear();
            db.Grupos.Add(grupo);
            db.SaveChanges();
        }
    }

    public static void AddReporteMant(ReporteMantenimiento Reporte) {
        using (Almacen db = new Almacen()) {
            Clear();
            db.ReporteMantenimientos.Add(Reporte);
            db.SaveChanges();
        }
    }

    public static void AddDescPedido(DescPedido descPedido)
    {
        using (Almacen db = new Almacen())
        {
            Clear();
            db.DescPedidos.Add(descPedido);
            db.SaveChanges();
        }
    }
    */
    #endregion

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

    public static Mantenimiento GetDataOfMantenimiento(){
        Mantenimiento mantenimiento = new Mantenimiento();
        Program.SectionTitle("Vamoa introducir un nuevo mantenimiento");
        do{
            WriteLine("Dame el nombre:");
            mantenimiento.Nombre = ReadLine();
        } while (mantenimiento.Nombre.Length > 50);
        do{
            WriteLine("Dame la descripcion:");
            mantenimiento.Descripcion = ReadLine();
        } while (mantenimiento.Descripcion.Length > 100);
        using (Almacen db = new()){
            int? lastMantId = db.Mantenimientos.OrderByDescending(u => u.MantenimientoId).Select(u => u.MantenimientoId).FirstOrDefault();
            int MantID = lastMantId.HasValue ? lastMantId.Value + 1 : 1;
            mantenimiento.MantenimientoId = MantID;
        }
        return mantenimiento;
    }

    public static ReporteMantenimiento GetDataOfReportMant(){
        using(Almacen db = new()){
            ReporteMantenimiento reporteMantenimiento = new ReporteMantenimiento();
            Program.SectionTitle("Vamoa introducir un nuevo reporte de mantenimiento");
            string? input;
            do{
                WriteLine("Ingresa la fecha");
                input = ReadLine();
            }while(UI.DateValidation(input) == false);
            reporteMantenimiento.Fecha = DateTime.Parse(input);
            ReadMantenimientos();
            int mantenimientoId;
            Mantenimiento? mantenimiento;
            do{
                mantenimientoId = SearchId();
                mantenimiento = db.Mantenimientos!.FirstOrDefault(p => p.MantenimientoId == mantenimientoId);
                if((mantenimiento is null)){
                    WriteLine("No se encontro un mantenimiento para eliminar");
                }
                reporteMantenimiento.MantenimientoId = mantenimientoId;
            } while (mantenimiento == null && db.Mantenimientos != null);
            GeneralSearchCategory(4);
            reporteMantenimiento.MaterialId = UI.GetMaterialID(SearchId());
            return reporteMantenimiento;
        }
    }

    public static Material GetDataOfMaterial(){
        Material material = new Material();
        string? input;
        int id;
        do
        {
            WriteLine("Dame el id del material:");
            input = ReadLine();
        } while (!int.TryParse(input, out _) || UI.MaterialValidation(int.Parse(input)));
        material.MaterialId = int.Parse(input);

        ReadModelos();
        GeneralSearchModels();
        do{
            WriteLine("Dame el id del modelo:");
            input = ReadLine();
            id = UI.GetModeloID(input);
        } while (UI.ModeloValidation(id) == false);
        material.ModeloId = id;

        do{
            WriteLine("Dame la descripcion:");
            material.Descripcion = ReadLine();
        } while (material.Descripcion.Length > 255);
        
        do{
            WriteLine("Dame el el valor historico:");
            input = ReadLine();
        }while(!decimal.TryParse(input, out _));
        material.ValorHistorico = decimal.Parse(input);

        do{
            WriteLine("Dame el año de entrada:");
            input = ReadLine();
        }while(!int.TryParse(input, out _));
        material.YearEntrada = int.Parse(input);

        ReadMarcas();
        GeneralSearchMarcas();
        do{
            WriteLine("Dame el id de la marca:");
            input = ReadLine();
            id = UI.GetMarcaID(input);
        } while (UI.MarcaValidation(id) == false);
        material.MarcaId = id;

        ReadCategorias();
        GeneralSearchCategory(4);
        do{
            WriteLine("Dame el id de la categoria:");
            input = ReadLine();
            id = UI.GetCategoriaID(input);
        } while (UI.CategoriaValidation(id) == false);
        material.CategoriaId = id;

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

        do{
            WriteLine("Dame el numero de serie:");
            material.Serie = ReadLine();
        } while (material.Serie.Length > 255);
        material.Condicion = "1";
        return material;
    }
}