using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;
using System.Text.RegularExpressions;


public static partial class UI
{
    /// <summary>
    /// Username Validation Method for student
    /// 
    /// </summary>
    /// <param name="username"> Username string </param>
    /// <returns>
    ///     10 - Username Length isn't valid ||
    ///     20 - First two characters aren't a valid year ||
    ///     30 - The period is not a valid period ||
    ///     40 - The student ID is not a valid number ||
    ///     01 - The username is valid
    /// </returns>
    public static int UsernameValidation(string username)
    {
        if (username.Length > 50)
        {
            return 10;
        }
        if (int.TryParse(username, out _))
        {
            if (username.Length != 8)
            {

                return 10;
            }

            string year = username.Substring(0, 2);
            if (!int.TryParse(year, out _))
            {
                return 20;
            }
                
            string periodo = username.Substring(2, 3);
            if (periodo != "100" && periodo != "300")
            {
                return 30;
            }


            string identificador = username.Substring(5, 3);
            if (!int.TryParse(identificador, out _))
            {
                return 40;
            }
        }
        return 01;
    }

    /// <summary>
    /// Password Validation Method
    /// </summary>
    /// <param name="password"></param>
    /// <returns>
    ///     10 - Passsword is too short || 
    ///     20 - Password does not contains upper cases || 
    ///     30 - Password does not contains numbers || 
    ///     40 - Password does not contains special characters || 
    ///     01 - Password is valid
    /// </returns>
    public static int PasswordValidation(string password){
        List<string> commonPasswords = new List<string>
        {
            "password",
            "12345678",
            "abc123456",
            "contraseña",
            "qwerty",
            "admin",
            "letmein",
            "welcome",
            "123456789",
            "admin123",
            "iloveyou",
            "1234",
            "abc123",
            "password123",
            "test123",
            "123abc",
            "abcdef",
            "changeme",
            "12345",
            "qwerty123", 
            "Pasword123#"
        };

        if (password.Length <= 8)
        {
            Console.WriteLine("La contraseña es muy corta. Debe tener al menos 8 caracteres.");
            return 10;
        }else if (!password.Any(char.IsUpper)){
            Console.WriteLine("La contraseña debe contener al menos un caracter en mayusculas");
            return 20;
        }else if (!password.Any(char.IsDigit)){
            Console.WriteLine("La contraseña debe contener al menos un caracter numerico");
            return 30;
        }else if (!password.Any(c => char.IsSymbol(c) || char.IsPunctuation(c))){
            Console.WriteLine("La contraseña debe contener al menos un caracter especial no alfanumérico.");
            return 40;
        }else if (!password.Any(char.IsLower)){
            Console.WriteLine("La contraseña debe contener al menos un caracter en minúsculas.");
            return 50; 
        }else if (commonPasswords.Contains(password.ToLower())){
            Console.WriteLine("La contraseña es muy común o fácil de adivinar.");
            return 80;
        }else if (!password.Any(c => !char.IsLetterOrDigit(c))){
            Console.WriteLine("La contraseña debe contener al menos un caracter no alfanumérico.");
            return 90;
        }else if (!password.Any(char.IsUpper) || !password.Any(char.IsLower)){
            Console.WriteLine("La contraseña debe contener una combinación de mayúsculas y minúsculas.");
            return 100;
        }else{

            return 1;

        }

       
    }

    public static string GenerateUsername(string nombre, string ApellidoPaterno, string ApellidoMaterno)
    {
        string primerNombre = nombre.Split(' ')[0]; // Obtén el primer nombre
        string segundoNombre = string.Empty;
        if (nombre.Split(' ').Length > 1)
        {
            segundoNombre = nombre.Split(' ')[1][0].ToString(); // Obtiene la primera letra del segundo nombre si existe
        }
        string primerApellido = ApellidoPaterno;
        string segundoApellido = ApellidoMaterno[0].ToString(); // Obtén la primera letra del segundo apellido
        string username = $"{primerNombre}{segundoNombre}{primerApellido}{segundoApellido}";
        return username;
    }

    public static string SecondOptionUsername(string nombre, string ApellidoPaterno, string ApellidoMaterno)
    {
        string primerNombre = nombre.Split(' ')[0]; // Obtén el primer nombre
        string segundoNombre = string.Empty;
        if (nombre.Split(' ').Length > 1)
        {
            segundoNombre = nombre.Split(' ')[1][0].ToString(); // Obtiene la primera letra del segundo nombre si existe
        }
        string username = $"{primerNombre}{segundoNombre}{ApellidoPaterno}{ApellidoMaterno}";
        return username;
    }

    /// <summary>
    /// Register validation method
    /// </summary>
    /// <param name="registro"></param>
    /// <returns>
    ///     10 - wrong register length ||
    ///     20 - register cannot exist due to year ||
    ///     30 - register period is not valid  ||
    ///     01 -  register is valid ||
    /// </returns>
    public static int RegisterValidation(int registro)
    {
        string register = registro.ToString();
        if (register.Length != 8)//19300107
        {
            return 10;
        }
        int year = Convert.ToInt32(DateTime.Parse(DateTime.Now.ToString()).Year.ToString().Substring(2, 2));
        if ((registro / 1000000) > year)
        {
            return 20;
        }
        if (!register.Substring(2, 3).Contains("300") && !register.Substring(2, 3).Contains("100"))
        {
            return 30;
        }

        return 01;
    }

    /// <summary>
    /// Email Validation method
    /// </summary>
    /// <param name="Email"></param>
    /// <returns>
    ///         10 - wrong Email Length
    ///         20 - Not student email
    ///         30 - Wrong Email register
    ///         40 - Emails does not have "@ceti.mx"
    ///         01 - Valid Email ||
    /// </returns>
    public static int StudentEmailValidation(string? Email, long registro)
    {
        string register = registro.ToString();
        if (Email.Length != 17)//a19300107@ceti.mx
        {
            return 10;
        }
        if (!Email.Substring(0, 1).Contains('a'))
        {
            return 20;
        }
        if (!Email.Substring(1, 8).Contains(register))
        {
            return 30;
        }
        if (!Email.Substring(9, 8).Contains("@ceti.mx"))
        {
            return 40;
        }

        if (Email.Length != 17)
        {
            return 50;
        }


        if (!long.TryParse(Email.Substring(1, 8), out long parsedRegistro) || parsedRegistro != registro)
        {
            return 70;
        }

        if (Email.Substring(17) != "")
        {
            return 80;
        }


        if (!Email.Substring(9, 8).Equals("@ceti.mx", StringComparison.OrdinalIgnoreCase))
        {
            return 100;
        }

        return 1;
    }

    /// <summary>
    /// Group Validation Method
    /// </summary>
    /// <param name="Grupo"></param>
    /// <returns></returns>
    public static int? GetGroupID(string? Grupo)
    {
        try
        {
            using (Almacen db = new())
            {
                Grupo Grupos = db.Grupos.First(g => g.Nombre == Grupo);
                if (Grupos is null)
                {
                    WriteLine("The value you were searching does not exists");
                    return 0;
                }
                else
                {
                    return Grupos.GrupoId;
                }
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese grupo no exite");
            return 0;
            throw;
        }
    }

/// <summary>
///     Verifies if group ID exists
/// </summary>
/// <param name="grupo"></param>
/// <returns>
///      10 - grupo no encontrado
///      01 - grupo encontrado    
/// </returns>
public static int GroupVerification(int grupo)
{
    using (Almacen db = new())
    {
        IQueryable<Grupo> Grupos = db.Grupos.Where(g => g.GrupoId == grupo);
        if (Grupos is null || !Grupos.Any())
        {
            WriteLine("The value you were searching does not exists");
            return 10;
        }
        else
        {
            return 01;
        }
    }
}

public static bool NameValidation(string name)
{
    const int minLength = 2; // Define la longitud mínima permitida para el nombre
    const int maxLength = 50; // Define la longitud máxima permitida para el nombre

    bool validName = true;

    // Longitud del nombre
    if (name.Length < minLength || name.Length > maxLength)
    {
        Console.WriteLine("La longitud del nombre debe estar entre " + minLength + " y " + maxLength + ".");
        validName = false;
    }

    // Nombre no puede estar vacío
    if (string.IsNullOrWhiteSpace(name))
    {
        Console.WriteLine("El nombre no puede estar vacío.");
        validName = false;
    }

    // Nombre solo puede contener letras
    if (!name.All(char.IsLetter))
    {
        Console.WriteLine("El nombre solo puede contener letras.");
        validName = false;
    }

    // Nombre no puede empezar o terminar con espacios en blanco
    if (name.StartsWith(" ") || name.EndsWith(" "))
    {
        Console.WriteLine("El nombre no puede empezar o terminar con espacios en blanco.");
        validName = false;
    }

    // No se permiten espacios en blanco consecutivos en el nombre
    if (name.Contains("  "))
    {
        Console.WriteLine("No se permiten espacios en blanco consecutivos en el nombre.");
        validName = false;
    }

    // Validación original de caracteres especiales y números
    if (name.Any(n => "!1234567890".Contains(n)) || name.Any(n => "!@#$%^&*()-_+=<>?".Contains(n)))
    {
        Console.WriteLine("No debe contener números o caracteres especiales.");
        validName = false;
    }

    return validName;
}


public static bool EmailValidation(string email)
{
    bool validEmail;
    if (email.Contains("@ceti.mx") || email.Contains("@live.ceti.mx"))
    {
        validEmail = true;
    }
    else
    {
        Console.WriteLine("Correo electrónico invalido");
        validEmail = false;
    }
    return validEmail;
}

/// TODO:
/// Docent Username Validations
/// Almacenist Username Validations
/// Administrator Username Validations
/// Just length limitations
/// 
//Order validations:
public static bool DateValidation(string? sDate)
{
    bool validDate;
    try
    {
        if (DateTime.TryParse(sDate, out DateTime dateOnly))
        {
            if (dateOnly > DateTime.Now.Date && (dateOnly.Date - DateTime.Now.Date).TotalDays <= 7)
            {
                // Verifica si la fecha es un sábado o domingo
                if (dateOnly.DayOfWeek == DayOfWeek.Saturday || dateOnly.DayOfWeek == DayOfWeek.Sunday)
                {
                    validDate = false;
                    Program.Fail("No se permiten selecciones en sábados ni domingos.");
                }
                else
                {
                    validDate = true;
                }
            }
            else
            {
                validDate = false;
                Program.Fail("La fecha debe ser un día posterior al día actual y no mayor a una semana.");
            }
        }
        else
        {
            Program.Fail("Formato de fecha incorrecto. Intenta de nuevo.");
            validDate = false;
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Formato de fecha incorrecto. Intenta de nuevo.");
        validDate = false;
        throw;
    }
    return validDate;
}

//funcion que obtiene el ID del laboratorio ingresado por el usuario
public static int GetLabID(string? sLab)
{
    using (Almacen db = new())
    {
        try
        {
            Laboratorio laboratorio = db.Laboratorios.First(l => l.Nombre == sLab);
            if (laboratorio is null)
            {
                Program.Fail("Ese laboratorio no exite");
                return 0;
            }
            else
            {
                return laboratorio.LaboratorioId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese laboratorio no exite");
            return 0;
            throw;
        }
    }
}

//funcion que valida el laboratorio ingresado por el usuario
public static bool LabValidation(int realLab)
{
    bool validLab;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Laboratorio> queryableLab = db.Laboratorios.Where(l => l.LaboratorioId == realLab);
            if (queryableLab is null || (!queryableLab.Any()))
            {
                Program.Fail("Ese laboratorio no exite");
                validLab = false;
            }
            else
            {
                validLab = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validLab = false;
        throw;
    }
    return validLab;
}

//funcion que valida las horas ingresadas por el usuario
public static bool HourValidation(string? sHour)
{
    bool validHour;
    if (DateTime.TryParse(sHour, out DateTime hourOnly))
    {
        if (hourOnly.Hour < 7 || hourOnly.Hour > 14)
        {
            WriteLine("Horario no válido. Inténtalo de nuevo.");
            validHour = false;
        }
        else
        {
            validHour = true;
        }
    }
    else
    {
        Program.Fail("Formato de fecha incorrecto. Intenta de nuevo.");
        validHour = false;
    }
    return validHour;
}

//funcion que obtiene el id del material
public static int GetMaterialID(int categoryId){
    using (Almacen db = new()){
        try{
            Material material = db.Materiales.Where(m => m.Condicion == "1").First(m => m.CategoriaId == categoryId);
            material.Condicion = "2";
            db.SaveChanges();
            if (material is null){
                Program.Fail("Ese material no esta disponible");
                return 0;
            }
            else
            {
                return material.MaterialId;
            }
        }
        catch (Exception e)
        {
            WriteLine($"{e.Message}");
            Program.Fail("Ese material no exite");
            return 0;
            throw;
        }
    }
}

//funcion que obtiene el material mediante el ID
public static int GetMaterialForID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Material material = db.Materiales.First(l => l.MaterialId == int.Parse(id));
            if (material is null)
            {
                Program.Fail("Ese material no exite");
                return 0;
            }
            else
            {
                return material.MaterialId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese material no exite");
            return 0;
            throw;
        }
    }
}

//funcion que valida el material ingresado por el usuario
public static bool MaterialValidation(int realMaterial)
{
    bool validMaterial;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Material> queryableMaterial = db.Materiales.Where(l => l.MaterialId == realMaterial);
            if (queryableMaterial is null || (!queryableMaterial.Any()))
            {
                Program.Fail("Ese material no exite");
                validMaterial = false;
            }
            else
            {
                validMaterial = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validMaterial = false;
        throw;
    }
    return validMaterial;
}

//funcion que obtiene el pedido y regresa el ID
public static int GetPedidoID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Pedido pedido = db.Pedidos.First(l => l.PedidoId == int.Parse(id));
            if (pedido is null)
            {
                Program.Fail("Ese pedido no exite");
                return 0;
            }
            else
            {
                return pedido.PedidoId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese pedido no exite");
            return 0;
            throw;
        }
    }
}

//funcion que valida el pedido
public static bool PedidoValidation(int realPedido)
{
    bool validPedido;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Pedido> queryablePedido = db.Pedidos.Where(l => l.PedidoId == realPedido);
            if (queryablePedido is null || (!queryablePedido.Any()))
            {
                Program.Fail("Ese pedido no exite");
                validPedido = false;
            }
            else
            {
                validPedido = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validPedido = false;
        throw;
    }
    return validPedido;
}

//funcion que obtiene el ID del docente ingresado por el usuario
public static int GetDocenteID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Docente docente = db.Docentes.First(d => d.DocenteId == int.Parse(id));
            if (docente is null)
            {
                Program.Fail("Ese docente no exite");
                return 0;
            }
            else
            {
                return docente.DocenteId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese docente no exite");
            return 0;
            throw;
        }
    }
}

//funcion que verifica el docente ingresado por el usuario
public static bool DocenteValidation(int realDocente)
{
    bool validDocente;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Docente> queryableDocente = db.Docentes.Where(d => d.DocenteId == realDocente);
            if (queryableDocente is null || (!queryableDocente.Any()))
            {
                Program.Fail("Ese docente no exite");
                validDocente = false;
            }
            else
            {
                validDocente = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validDocente = false;
        throw;
    }
    return validDocente;
}

//funcion que obtiene el ID del almacenista ingresado por el usuario
public static int GetAlmacenistaID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Almacenista almacenista = db.Almacenistas.First(d => d.AlmacenistaId == int.Parse(id));
            if (almacenista is null)
            {
                Program.Fail("Ese almacenista no exite");
                return 0;
            }
            else
            {
                return almacenista.AlmacenistaId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese almacenista no exite");
            return 0;
            throw;
        }
    }
}

//funcion que valida el almacenista ingresado por el usuario
public static bool AlmacenistaValidation(int realAlmacenista)
{
    bool validAlmacenista;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Almacenista> queryableAlmacenista = db.Almacenistas.Where(d => d.AlmacenistaId == realAlmacenista);
            if (queryableAlmacenista is null || (!queryableAlmacenista.Any()))
            {
                Program.Fail("Ese almacenista no exite");
                validAlmacenista = false;
            }
            else
            {
                validAlmacenista = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validAlmacenista = false;
        throw;
    }
    return validAlmacenista;
}

//funcion que obtiene el ID del estudiante seleccionado por el usuario
public static int GetEstudianteID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Estudiante estudiante = db.Estudiantes.First(d => d.EstudianteId == int.Parse(id));
            if (estudiante is null)
            {
                Program.Fail("Ese estudiante no exite");
                return 0;
            }
            else
            {
                return estudiante.EstudianteId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese estudiante no exite");
            return 0;
            throw;
        }
    }
}

//funcion que valida el estudiante seleccionado por el usuario
public static bool EstudianteValidation(int realEstudiante)
{
    bool validEstudiante;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Estudiante> queryableEstudiante = db.Estudiantes.Where(d => d.EstudianteId == realEstudiante);
            if (queryableEstudiante is null || (!queryableEstudiante.Any()))
            {
                Program.Fail("Ese estudiante no exite");
                validEstudiante = false;
            }
            else
            {
                validEstudiante = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validEstudiante = false;
        throw;
    }
    return validEstudiante;
}

//funcion que obtiene el ID de la marca ingresada por el usuario
public static int GetMarcaID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Marca marca = db.Marcas.First(d => d.MarcaId == int.Parse(id));
            if (marca is null)
            {
                Program.Fail("Esa marca no exite");
                return 0;
            }
            else
            {
                return marca.MarcaId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese marca no exite");
            return 0;
            throw;
        }
    }
}

//funcion que valida la marca ingresada por el usuario
public static bool MarcaValidation(int realMarca)
{
    bool validMarca;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Marca> queryableMarca = db.Marcas.Where(d => d.MarcaId == realMarca);
            if (queryableMarca is null || (!queryableMarca.Any()))
            {
                Program.Fail("Ese marca no exite");
                validMarca = false;
            }
            else
            {
                validMarca = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validMarca = false;
        throw;
    }
    return validMarca;
}

//funcion que obtiene el ID del modelo ingresado por el usuario
public static int GetModeloID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Modelo modelo = db.Modelos.First(d => d.ModeloId == int.Parse(id));
            if (modelo is null)
            {
                Program.Fail("Esa modelo no exite");
                return 0;
            }
            else
            {
                return modelo.ModeloId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese modelo no exite");
            return 0;
            throw;
        }
    }
}
//funcion que valida que el modelo ingresado sea correcto
public static bool ModeloValidation(int realModelo)
{
    bool validModelo;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Modelo> queryableModelo = db.Modelos.Where(d => d.ModeloId == realModelo);
            if (queryableModelo is null || (!queryableModelo.Any()))
            {
                Program.Fail("Ese modelo no exite");
                validModelo = false;
            }
            else
            {
                validModelo = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validModelo = false;
        throw;
    }
    return validModelo;
}
//funcion que obtiene el ID de la categoria ingresada por el usuario
public static int GetCategoriaID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Categoria categoria = db.Categorias.First(d => d.CategoriaId == int.Parse(id));
            if (categoria is null)
            {
                Program.Fail("Esa categoria no exite");
                return 0;
            }
            else
            {
                return categoria.CategoriaId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese categoria no exite");
            return 0;
            throw;
        }
    }
}
//funcion que valida la categoria ingresada por el usuario
public static bool CategoriaValidation(int realCategoria)
{
    bool validCategoria;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Categoria> queryableCategoria = db.Categorias.Where(d => d.CategoriaId == realCategoria);
            if (queryableCategoria is null || (!queryableCategoria.Any()))
            {
                Program.Fail("Ese categoria no exite");
                validCategoria = false;
            }
            else
            {
                validCategoria = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validCategoria = false;
        throw;
    }
    return validCategoria;
}
//funcion que obtiene el ID del mantenimiento ingresado por el usuario
public static int GetMantenimientoID(string? id)
{
    using (Almacen db = new())
    {
        try
        {
            Mantenimiento mantenimiento = db.Mantenimientos.First(d => d.MantenimientoId == int.Parse(id));
            if (mantenimiento is null)
            {
                Program.Fail("Esa mantenimiento no exite");
                return 0;
            }
            else
            {
                return mantenimiento.MantenimientoId;
            }
        }
        catch (System.InvalidOperationException)
        {
            Program.Fail("Ese mantenimiento no exite");
            return 0;
            throw;
        }
    }
}

//validacion para revisar que el mantenimiento que ingreso el usuario es correcto
public static bool MantenimientoValidation(int realMantenimiento)
{
    bool validMantenimiento;
    try
    {
        using (Almacen db = new())
        {
            IQueryable<Mantenimiento> queryableMantenimiento = db.Mantenimientos.Where(d => d.MantenimientoId == realMantenimiento);
            if (queryableMantenimiento is null || (!queryableMantenimiento.Any()))
            {
                Program.Fail("Ese mantenimiento no exite");
                validMantenimiento = false;
            }
            else
            {
                validMantenimiento = true;
            }
        }
    }
    catch (System.Exception)
    {
        Program.Fail("Introduce un numero por favor.");
        validMantenimiento = false;
        throw;
    }
    return validMantenimiento;
}
}