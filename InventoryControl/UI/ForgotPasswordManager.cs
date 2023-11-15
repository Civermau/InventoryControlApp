using AlmacenDataContext;
using AlmacenSQLiteEntities;
using System;
using System.Linq;

public static partial class UI
{
    //funcion para recuperar contraseña
    public static void ForgotPassword()
    {
        Console.Clear();
        Console.WriteLine("Introduce tu correo electrónico:");
        string email = Console.ReadLine() ?? "";

        using (Almacen db = new Almacen())
        {
            //busca el correo ingresado entre todos los usuarios
            Usuario usuario = db.Usuarios
                .FirstOrDefault(u => u.Almacenistas.Any(a => a.Correo == email)
                                    || u.Coordinadores.Any(c => c.Correo == email)
                                    || u.Docentes.Any(d => d.Correo == email)
                                    || u.Estudiantes.Any(e => e.Correo == email));

            if (usuario != null)
            {
                //genera el codigo de verificacion y lo manda al usuario
                string verificationCode = GenerateRandomString();

                SendVerificationCodeByEmail(email, verificationCode);

                Console.WriteLine($"Se ha enviado un código de verificación a {email}.");
                Console.Write("Por favor, ingresa el código de verificación para poder cambiar su contraseña: ");
                string userEnteredCode = Console.ReadLine() ?? "";

                if (userEnteredCode == verificationCode)
                {
                    Console.WriteLine("Código de verificación correcto. Ahora puedes cambiar tu contraseña.");

                    string newPassword;
                    int validationCode;
                    do
                    {
                        Console.WriteLine("Ingresa tu nueva contraseña:");
                        newPassword = Console.ReadLine() ?? "";
                        //validamos el formato de la contraseña
                        validationCode = PasswordValidation(newPassword);

                        switch (validationCode)
                        {
                            case 10:
                                Console.WriteLine("Error: La contraseña debe tener al menos 8 caracteres.");
                                break;
                            case 20:
                                Console.WriteLine("Error: La contraseña debe contener por lo menos una mayúscula.");
                                break;
                            case 30:
                                Console.WriteLine("Error: La contraseña debe contener por lo menos un número.");
                                break;
                            case 40:
                                Console.WriteLine("Error: La contraseña debe contener por lo menos un caracter especial.");
                                break;
                            default:
                                break;
                        }
                    } while (validationCode != 1);

                    usuario.Password = newPassword;
                    db.SaveChanges();

                    Console.Clear();
                    Console.WriteLine("Tu contraseña se ha cambiado con éxito.");
                }
                else
                {
                    Console.WriteLine("Código de verificación incorrecto. No se puede cambiar la contraseña.");
                }
            }
            else
            {
                Console.WriteLine("Usuario no encontrado.");
            }
        }
    }

    //generador del string aleatorio para recuperar la contraseña
    private static string GenerateRandomString()
    {
        string guid = Guid.NewGuid().ToString();
        string[] parts = guid.Split('-');
        return parts[0];
    }

    //funcion para enviar el correo de verificacion
    private static void SendVerificationCodeByEmail(string email, string verificationCode)
    {
        EmailSender emailSender = new EmailSender();
        emailSender.setDestinatary(email);
        emailSender.setSubject("Código de Verificación");
        emailSender.setBody($"Tu código de verificación es: {verificationCode}", containsHTML: false);
        emailSender.sendMail();
    }

    //envia el correo de solicitudes de material al maestro
    public static void SendNotTeacher(Estudiante estudiante, DescPedido descPedido, Pedido pedido){
        using (Almacen db = new()){
            EmailSender emailSender = new EmailSender();
            Docente docente = db.Docentes.FirstOrDefault(p => p.DocenteId == pedido.DocenteId);
            Material material = db.Materiales.FirstOrDefault(p => p.MaterialId == descPedido.MaterialId);
            emailSender.setDestinatary(docente.Correo);
            emailSender.setSubject("Tienes una nueva solicitud de aprovacion de material");
            string message = $"Datos del alumno\n Nombre: {estudiante.Nombre}";
            message += $"{estudiante.ApellidoPaterno}  {estudiante.ApellidoMaterno}\n";
            message += $"Registro: {estudiante.EstudianteId} \n";
            message += $"Grupo: {estudiante.Grupo.Nombre} \n";
            message += $"Datos del pedido \n";
            message += $"Cantidad: {material.Descripcion}\n";
            message += $"Cantidad: {descPedido.Cantidad}\n";
            emailSender.setBody(message, containsHTML: false);
            emailSender.sendMail();
        }
    }

    //envia el correo del estado de la solicitud del alumno
    public static void SendEmailForOrderState(Estudiante? estudiante, string? razon, Pedido pedido){
        EmailSender emailSender = new EmailSender();
        emailSender.setDestinatary(estudiante.Correo);
        emailSender.setSubject("Tu profesor ya reviso tu solicitud");
        if(pedido.Estado == true){
            emailSender.setBody($"Tu solicitud de pedido fue aprovada", containsHTML: false);
        }
        else{
            emailSender.setBody($"Tu solicitud de pedido fue denegada por que: {razon}", containsHTML: false);
        }
        emailSender.sendMail();
    }

    //Envia notificaicon de la orden
    public static void NotificationOfOrders(Estudiante estudiante){
        if (estudiante == null)
        {
            // Manejar el caso en el que estudiante es null, por ejemplo, lanzar una excepción o salir de la función.
            return;
        }
        using (Almacen db = new()){
            EmailSender emailSender = new EmailSender(); 
            DateTime fechaActual = DateTime.Now.Date;
            emailSender.setDestinatary(estudiante.Correo);
            emailSender.setSubject("Entregas de pedidos atrasados");
            string message = "Debes al almacen los siguientes materiales: \n";
            List<Pedido> pedidos = db.Pedidos
                        .Where(p => p.EstudianteId == estudiante.EstudianteId)
                        .AsEnumerable() // Forzar la evaluación en el lado del cliente
                        .Where(p => (fechaActual - p.Fecha.Value.Date).TotalDays >= 0).ToList();
            foreach (Pedido item in pedidos)
            {
                DescPedido descPedido = db.DescPedidos.FirstOrDefault(d => d.PedidoId == item.PedidoId);
                Material material = db.Materiales.FirstOrDefault(p => p.MaterialId == descPedido.MaterialId);
                message += $"Material: {material.Descripcion}\n";
                message += $"Cantidad: {descPedido.Cantidad}\n";
            }
            message += $"Devuelvelo lo antes posible o la deuda de adeudo incrementara\n";
            message += $"Adeudo actual: {estudiante.Adeudo}";
            emailSender.setBody(message, containsHTML: false);
            emailSender.sendMail();
        }
    }
}
