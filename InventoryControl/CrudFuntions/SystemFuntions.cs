using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class CrudFunctions{
    
    public static void OrderMaterial(int typeOfUser, int? userID){
        using (Almacen db = new()){
            Pedido pedido = new Pedido();
            DescPedido descPedido = new DescPedido();
            pedido = GetDataOfOrder(userID,typeOfUser);

            GeneralSearch((Almacen db) => db.Categorias);
            
            descPedido.MaterialId = UI.GetMaterialID(SearchId());
            WriteLine("Ingresa la cantidad:");
            descPedido.Cantidad = int.Parse(ReadLine());
            AddPedido(pedido, descPedido);
            if(typeOfUser == 2){
                Estudiante estudiante = db.Estudiantes.FirstOrDefault(p => p.UsuarioId == userID);
                UI.SendNotTeacher(estudiante,descPedido,pedido);
            }
        }
    }

    public static Pedido GetDataOfOrder(int? userID, int typeOfUser){
        Pedido pedido = new Pedido();
        string? input;
        int LabID;
        Program.SectionTitle("Vamos a hacer un pedido!!!");
        do{
            WriteLine("Ingresa la fecha");
            input = ReadLine();
        }while(UI.DateValidation(input) == false);
        pedido.Fecha = DateTime.Parse(input);

        do{
            using (Almacen db = new Almacen())
            {
                ListEntitiesWithHighlight(db.Laboratorios);
                WriteLine("Ingresa el laboratorio:");
                input = ReadLine();
                LabID = UI.GetLabID(input);
            }
        } while (UI.LabValidation(LabID) == false);
        pedido.LaboratorioId =LabID;

        do
        {
            do{
                WriteLine("Ingresa la hora de entrega:");
                input = ReadLine();
            } while (UI.HourValidation(input) == false);
            pedido.HoraEntrega = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {input}");

            do{
                WriteLine("Ingresa la hora de devolucion:");
                input = ReadLine();
            } while (UI.HourValidation(input) == false);
            pedido.HoraDevolucion = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {input}");
            if(pedido.HoraDevolucion <= pedido.HoraEntrega){
                Program.Fail("La hora de devolucion debe ser posterior a la hora de entrega");
            }
        } while (pedido.HoraDevolucion <= pedido.HoraEntrega);

        //Para que la fecha tome el valor de Hora de Entrega
        pedido.Fecha = DateTime.Parse($"{pedido.Fecha:yyyy-MM-dd} {pedido.HoraEntrega:HH:mm:ss}");

        using(Almacen db = new()){
            switch(typeOfUser){
                case 1:
                    Docente? docente = db.Docentes!.FirstOrDefault(r => r.UsuarioId == userID);
                    pedido.DocenteId = docente.DocenteId;
                    break;
                case 2:
                    GeneralSearch((Almacen db) => db.Docentes);
                    pedido.DocenteId = SearchId();
                    Estudiante? estudiante = db.Estudiantes!.FirstOrDefault(r => r.UsuarioId == userID);
                    pedido.EstudianteId = estudiante.EstudianteId; 
                    break;
                case 4:
                    Coordinador? coordinador = db.Coordinadores!.FirstOrDefault(r => r.UsuarioId == userID);
                    pedido.CoordinadorId = coordinador.CoordinadorId;
                    break;
            }
        }
        return pedido;
    }

    public static void ListCategories(int typeOfUser){
        using(Almacen db = new()){
            IQueryable<Categoria> categorias;
            if(typeOfUser == 2){
                categorias = db.Categorias.Where(categoria => categoria.Acceso == "1");
            }
            else if(typeOfUser == 1){
                categorias = db.Categorias.Where(c => c.Acceso == "1" || c.Acceso == "2");
            }
            else{
                categorias = db.Categorias;
            }
            if(categorias is null || (!categorias.Any())){
                Program.Fail("No hay categorias registrados");
                return;
            }
            WriteLine("{0,-3} | {1,-35} | {2,8} | {3,5} | {4}","Id","Nombre","Descripcion","","");
            foreach(var categoria in categorias){
                WriteLine($"{categoria.CategoriaId,-3} | {categoria.Nombre,-35} | {categoria.Descripcion,-14} |");
            }
            WriteLine();
        }
    }

    public static void ListOrders(int typeOfUser, int? userID){
        using(Almacen db = new()){
            if(db.Pedidos is null || (!db.Pedidos.Any())){
                Program.Fail("No hay pedidos registrados");
                return;
            }
            IQueryable<Pedido> pedidos;
            if(typeOfUser == 2){
                pedidos = db.Pedidos.Where(p => p.EstudianteId == userID);
            } 
            else if(typeOfUser == 1){
                pedidos = db.Pedidos.Where(p => p.DocenteId == userID && p.EstudianteId == null);
            }
            else if (typeOfUser == 4){
                pedidos = db.Pedidos.Where(p => p.CoordinadorId == userID);
            }
            else{
                pedidos = db.Pedidos;
            }
            WriteLine("{0,-2} | {1,-22} | {2,-13} | {3,-22} | {4,-22} | {5,-10} | {6,-10} | {7}","Id","Fecha","Laboratorio","Hora de Entrega","Hora de Devolucion","Estudiante","Docente","Aprovado");
            foreach(var pedido in pedidos){
                WriteLine($"{pedido.PedidoId,-2} | {pedido.Fecha,-22} | {pedido.Laboratorio.Nombre,-13} | {pedido.HoraEntrega,-22} | {pedido.HoraDevolucion,-5} | {(pedido.EstudianteId is null ? "No hay" : pedido.Estudiante.Nombre),-10} | {pedido.Docente.Nombre,-10} | {(pedido.Estado ? "SI" : "NO")}");
            }
            WriteLine();
        }
    }

    public static void HistoryOfOrders(int typeOfUser, int? userID){
        using(Almacen db = new()){
            if(db.Pedidos is null || (!db.Pedidos.Any())){
                Program.Fail("No hay pedidos registrados");
                return;
            }
            IQueryable<Pedido> pedidosAnteriores;
            IQueryable<Pedido> pedidosActuales;
            if(typeOfUser == 2){
                pedidosAnteriores = db.Pedidos.Where(p => p.EstudianteId == userID && p.Fecha.Value.Date < DateTime.Now.Date);
                pedidosActuales = db.Pedidos.Where(p => p.EstudianteId == userID && p.Fecha.Value.Date > DateTime.Now.Date);
            } 
            else if(typeOfUser == 1){
                pedidosAnteriores = db.Pedidos.Where(p => p.DocenteId == userID && p.Fecha.Value.Date < DateTime.Now.Date);
                pedidosActuales = db.Pedidos.Where(p => p.DocenteId == userID && p.Fecha.Value.Date > DateTime.Now.Date);
            }
            else if (typeOfUser == 4){
                pedidosAnteriores = db.Pedidos.Where(p => p.CoordinadorId == userID && p.Fecha.Value.Date < DateTime.Now.Date);
                pedidosActuales = db.Pedidos.Where(p => p.CoordinadorId == userID && p.Fecha.Value.Date > DateTime.Now.Date);
            }
            else{
                pedidosAnteriores = db.Pedidos;
                pedidosActuales = db.Pedidos;
            }
            Program.SectionTitle("Pedidos anteriores:");
            ReadData(pedidosAnteriores);
            Program.SectionTitle("Pedidos actuales:");
            ReadData(pedidosActuales);
        }
    }

    public static void ApprovedOrder(int typeOfUser, int? userID){
        Program.SectionTitle("Vamos a aprovar un pedido");
        using(Almacen db = new()){
            string? input;
            int PedidoId;
            IQueryable<Pedido> pedidos = db.Pedidos.Where(p => p.DocenteId == userID && p.Estado == false);
            ReadData(pedidos);
            int pedidoId;
            do{
                WriteLine("Que pedido quieres modificar?");
                input = ReadLine();
                pedidoId = UI.GetPedidoID(input);
            } while (UI.PedidoValidation(pedidoId) == false);
            Pedido? pedido = db.Pedidos!.FirstOrDefault(p => p.PedidoId == pedidoId);
            do{
                WriteLine("¿Quiere aprobar o denegar el pedido?");
                WriteLine("1. Aprovar");
                WriteLine("2. Denegar");
                input = ReadLine();
            } while (input == "1\n" || input == "2\n");
            input = input!.Trim();
            if(input == "1"){
                pedido.Estado = true;
                Estudiante estudiante = db.Estudiantes.FirstOrDefault(p => p.EstudianteId == pedido.EstudianteId);
                UI.SendEmailForOrderState(estudiante,"",pedido);
                db.SaveChanges();
                Program.SectionTitle("Aprovado");
            }
            else if(input == "2"){
                pedido.Estado = false;
                Estudiante estudiante = db.Estudiantes.FirstOrDefault(p => p.EstudianteId == pedido.EstudianteId);
                WriteLine($"Razon para denegar la peticion:");
                input = ReadLine();
                UI.SendEmailForOrderState(estudiante,input,pedido);
                db.SaveChanges();
                Program.Fail("Denegado");
            }
        }
    }
    public static void EntregaMaterial(){
        using(Almacen db = new()){
            IQueryable<Material> materials = db.Materiales.Where(m => m.Condicion == "2");
            ReadData(materials);
            string? input;
            int materialId;
            do{
                WriteLine("Que material desea entregar?");
                input = ReadLine();
                materialId = UI.GetMaterialForID(input);
            }while(UI.MaterialValidation(materialId) == false);
            Material material = db.Materiales.FirstOrDefault(m => m.MaterialId == materialId);
            material.Condicion = "1";
            db.SaveChanges();
        }
    }

    public static void CalcularAdeudo()
    {
        using (Almacen db = new())
        {
            foreach (Estudiante alumno in db.Estudiantes)
            {
                DateTime fechaActual = DateTime.Now.Date;
                
                var pedidos = db.Pedidos
                    .Where(p => p.EstudianteId == alumno.EstudianteId)
                    .AsEnumerable() // Forzar la evaluación en el lado del cliente
                    .Where(p => (fechaActual - p.Fecha.Value.Date).TotalDays >= 0);
                if (pedidos is null || !pedidos.Any()){
                    alumno.Adeudo = 0;
                }
                else
                {
                    alumno.Adeudo = 0;
                    foreach (var item in pedidos){
                        fechaActual = DateTime.Now.Date;
                        alumno.Adeudo = alumno.Adeudo + (int)(10 * (fechaActual - item.Fecha.Value.Date).TotalDays);
                    }
                    UI.NotificationOfOrders(alumno);
                }
                db.SaveChanges();
            }
        }
    }

    public static Mantenimiento GetDataOfMantenimiento()
    {
        Mantenimiento mantenimiento = new Mantenimiento();
        Program.SectionTitle("Vamoa introducir un nuevo mantenimiento");
        do
        {
            WriteLine("Dame el nombre:");
            mantenimiento.Nombre = ReadLine();
        } while (mantenimiento.Nombre.Length > 50);
        do
        {
            WriteLine("Dame la descripcion:");
            mantenimiento.Descripcion = ReadLine();
        } while (mantenimiento.Descripcion.Length > 100);
        using (Almacen db = new())
        {
            int? lastMantId = db.Mantenimientos.OrderByDescending(u => u.MantenimientoId).Select(u => u.MantenimientoId).FirstOrDefault();
            int MantID = lastMantId.HasValue ? lastMantId.Value + 1 : 1;
            mantenimiento.MantenimientoId = MantID;
        }
        return mantenimiento;
    }

    public static ReporteMantenimiento GetDataOfReportMant()
    {
        using (Almacen db = new())
        {
            ReporteMantenimiento reporteMantenimiento = new ReporteMantenimiento();
            Program.SectionTitle("Vamoa introducir un nuevo reporte de mantenimiento");
            string? input;
            do
            {
                WriteLine("Ingresa la fecha");
                input = ReadLine();
            } while (UI.DateValidation(input) == false);
            reporteMantenimiento.Fecha = DateTime.Parse(input);
            //ReadData((Almacen db) => db.Mantenimientos);
            int mantenimientoId;
            Mantenimiento? mantenimiento;
            do
            {
                mantenimientoId = SearchId();
                mantenimiento = db.Mantenimientos!.FirstOrDefault(p => p.MantenimientoId == mantenimientoId);
                if ((mantenimiento is null))
                {
                    WriteLine("No se encontro un mantenimiento para eliminar");
                }
                reporteMantenimiento.MantenimientoId = mantenimientoId;
            } while (mantenimiento == null && db.Mantenimientos != null);
            GeneralSearch((Almacen db) => db.Categorias);
            reporteMantenimiento.MaterialId = UI.GetMaterialID(SearchId());
            return reporteMantenimiento;
        }
    }

    public static Material GetDataOfMaterial()
    {
        Material material = new Material();
        string? input;
        int id;
        do
        {
            WriteLine("Dame el id del material:");
            input = ReadLine();
        } while (!int.TryParse(input, out _) || UI.MaterialValidation(int.Parse(input)));
        material.MaterialId = int.Parse(input);

        //ReadData((Almacen db) => db);
        GeneralSearch((Almacen db) => db.Modelos);
        do
        {
            WriteLine("Dame el id del modelo:");
            input = ReadLine();
            id = UI.GetModeloID(input);
        } while (UI.ModeloValidation(id) == false);
        material.ModeloId = id;

        do
        {
            WriteLine("Dame la descripcion:");
            material.Descripcion = ReadLine();
        } while (material.Descripcion.Length > 255);

        do
        {
            WriteLine("Dame el el valor historico:");
            input = ReadLine();
        } while (!decimal.TryParse(input, out _));
        material.ValorHistorico = decimal.Parse(input);

        do
        {
            WriteLine("Dame el año de entrada:");
            input = ReadLine();
        } while (!int.TryParse(input, out _));
        material.YearEntrada = int.Parse(input);

        //ReadData((Almacen db) => db.Marcas);
        GeneralSearch((Almacen db) => db.Marcas);
        do
        {
            WriteLine("Dame el id de la marca:");
            input = ReadLine();
            id = UI.GetMarcaID(input);
        } while (UI.MarcaValidation(id) == false);
        material.MarcaId = id;

        //ReadData((Almacen db) => db.Categorias);
        GeneralSearch((Almacen db) => db.Categorias);
        do
        {
            WriteLine("Dame el id de la categoria:");
            input = ReadLine();
            id = UI.GetCategoriaID(input);
        } while (UI.CategoriaValidation(id) == false);
        material.CategoriaId = id;

        do
        {
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

        do
        {
            WriteLine("Dame el numero de serie:");
            material.Serie = ReadLine();
        } while (material.Serie.Length > 255);
        material.Condicion = "1";
        return material;
    }

    public static void GenerateReports()
    {
        string input = "";
        Program.SectionTitle("Hagamos un reporte:");
        do
        {
            WriteLine($"De que tabla quieres hacer reporte?");
            WriteLine($"1 - Reporte mantenimiento");
            WriteLine($"2 - Categoria");
            WriteLine($"3 - Grupo");
            WriteLine($"4 - Laboratorio");
            WriteLine($"5 - Marca");
            WriteLine($"6 - Modelo");
            WriteLine($"7 - Plantel");
            WriteLine($"8 - Semestre");
            WriteLine($"9 - Mantenimiento");
            WriteLine($"10 - Usuario");
            WriteLine($"11 - Docente");
            WriteLine($"12 - Almacenista");
            WriteLine($"13 - Coordinador");
            WriteLine($"14 - Estudiante");
            WriteLine($"15 - Material");
            WriteLine($"16 - Pedido");
            WriteLine($"17 - Descripcion de pedido");
            WriteLine($"18 - Salir");
            input = ReadLine();
            using (Almacen db = new Almacen())
            {
                switch (input)
                {
                    case "1":
                        IQueryable<ReporteMantenimiento> reporteMantenimientos = db.ReporteMantenimientos.OrderByDescending(r => r.ReporteMantenimientoId);
                        ReadData(reporteMantenimientos);
                        break;
                    case "2":
                        IQueryable<Categoria> categorias = db.Categorias.OrderByDescending(r => r.CategoriaId);
                        ReadData(categorias);
                        break;
                    case "3":
                        IQueryable<Grupo> grupos = db.Grupos.OrderByDescending(r => r.GrupoId);
                        ReadData(grupos);
                        break;
                    case "4":
                        IQueryable<Laboratorio> laboratorios = db.Laboratorios.OrderByDescending(r => r.LaboratorioId);
                        ReadData(laboratorios);
                        break;
                    case "5":
                        IQueryable<Marca> marcas = db.Marcas.OrderByDescending(r => r.MarcaId);
                        ReadData(marcas);
                        break;
                    case "6":
                        IQueryable<Modelo> modelos = db.Modelos.OrderByDescending(r => r.ModeloId);
                        ReadData(modelos);
                        break;
                    case "7":
                        IQueryable<Plantel> planteles = db.Planteles.OrderByDescending(r => r.PlantelId);
                        ReadData(planteles);
                        break;
                    case "8":
                        IQueryable<Semestre> semestres = db.Semestres.OrderByDescending(r => r.SemestreId);
                        ReadData(semestres);
                        break;
                    case "9":
                        IQueryable<Mantenimiento> mantenimientos = db.Mantenimientos.OrderByDescending(r => r.MantenimientoId);
                        ReadData(mantenimientos);
                        break;
                    case "10":
                        IQueryable<Usuario> usuarios = db.Usuarios.OrderByDescending(r => r.UsuarioId);
                        ReadData(usuarios);
                        break;
                    case "11":
                        IQueryable<Docente> docentes = db.Docentes.OrderByDescending(r => r.DocenteId);
                        ReadData(docentes);
                        break;
                    case "12":
                        IQueryable<Almacenista> almacenistas = db.Almacenistas.OrderByDescending(r => r.AlmacenistaId);
                        ReadData(almacenistas);
                        break;
                    case "13":
                        IQueryable<Coordinador> coordinadors = db.Coordinadores.OrderByDescending(r => r.CoordinadorId);
                        ReadData(coordinadors);
                        break;
                    case "14":
                        IQueryable<Estudiante> estudiantes = db.Estudiantes.OrderByDescending(r => r.EstudianteId);
                        ReadData(estudiantes);
                        break;
                    case "15":
                        IQueryable<Material> materials = db.Materiales.OrderByDescending(r => r.MaterialId);
                        ReadData(materials);
                        break;
                    case "16":
                        IQueryable<Pedido> pedidos = db.Pedidos.OrderByDescending(r => r.PedidoId);
                        ReadData(pedidos);
                        break;
                    case "17":
                        IQueryable<DescPedido> descPedidos = db.DescPedidos.OrderByDescending(r => r.DescPedidoId);
                        ReadData(descPedidos);
                        break;
                    case "18":
                        return;
                    default:
                        WriteLine("Opcion invalida");
                        break;
                }
            }
        } while (true);
    }
}