using System;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using AlmacenSQLiteEntities;
using AlmacenDataContext;

namespace InventoryControlPages
{
    //Clase para el modelo de estudiante
    public class EstudianteModel : PageModel
    {
        //Declaramos la propiedad para la base de datos
        private Almacen db;

        // Constructor que inicializa la base de datos
        public EstudianteModel(Almacen context)
        {
            db = context;
        }

        //Declaramos la lista para objetos estudiantes
        public List<Estudiante>? estudiantes { get; set; }

        //Declaramos como Bind property todas las propiedades de enlace que vamos a usar para crear nuevos objetos de sus clases
        [BindProperty]
        public Estudiante? estudiante { get; set; }
        [BindProperty]
        public Pedido? pedido { get; set; } = new();

        [BindProperty]
        public DescPedido? descPedido { get; set; }
        [BindProperty]
        public Categoria? categoria { get; set; }
        
        //Declaramos como TempData el mensaje de error que se enviara a los usuarios
        [TempData]
        public string ErrorMessageEstudiante { get; set; }
        
        //OnGet para obtener los datos del estudiante con el ID ingresado
        public void OnGet(int id)
        {
            estudiante = db.Estudiantes.FirstOrDefault(e => e.EstudianteId == id);
            TempData["UserType"] = 2;
            ViewData["Title"] = "";
        }

        //Funcion OnPost para generar una nueva orden
        public IActionResult OnPostNewOrder()
        {
            try{

                if ((pedido is not null) && (descPedido is not null) &&  !ModelState.IsValid)
                {
                    TempData["UserType"] = 2;
                    TempData["Fecha"] = pedido.Fecha;
                    TempData["HoraDevolucion"] = pedido.HoraDevolucion;
                    //Toma la fecha ingresada y valida que este correcta
                    int validateDate = UI.DateValidationWeb(pedido.Fecha.ToString());
                    switch (validateDate){
                        case 2:
                            TempData["ErrorMessageEstudiante"] = "No se permiten selecciones en sábados ni domingos.";
                            return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                        case 3:
                            TempData["ErrorMessageEstudiante"] = "La fecha debe ser un día posterior al día actual y no mayor a una semana.";
                            return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                        case 4:
                            TempData["ErrorMessageEstudiante"] = "Formato de Fecha Incorrecto.";
                            return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                        case 5:
                            TempData["ErrorMessageEstudiante"] = "Rellene todos los espacios.";
                            return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                        case 1:
                            // No hay error, proceder con la lógica normal
                            break;
                    }

                    pedido.HoraEntrega = pedido.Fecha;

                    if(UI.HourValidation(pedido.HoraEntrega.ToString()) == false){
                        TempData["ErrorMessageEstudiante"] = "Horario no válido. Inténtalo de nuevo.";
                        return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                    }


                    if(UI.HourValidation(pedido.HoraDevolucion.ToString()) == false){
                        TempData["ErrorMessageEstudiante"] = "Horario no válido. Inténtalo de nuevo.";
                        return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                    }

                    if(pedido.HoraDevolucion <= pedido.HoraEntrega){
                        TempData["ErrorMessageEstudiante"] = "La hora de devolución debe ser posterior a la hora de entrega.";
                        return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                    }

                    descPedido.MaterialId = UI.GetMaterialID(categoria.CategoriaId);
                    WriteLine($"{descPedido.MaterialId} |   {categoria.CategoriaId}");

                    if(descPedido.MaterialId is null || descPedido.MaterialId == 0){
                        TempData["ErrorMessageEstudiante"] = "Ese material no esta disponible.";
                        return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                    }

                    if(descPedido.Cantidad < 1){
                        TempData["ErrorMessageEstudiante"] = "No puedes introducir números negativos";
                        return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                    }
                    else if(descPedido.Cantidad > 10){
                        TempData["ErrorMessageEstudiante"] = "No puedes poner un cantidad tan grande de materiales";
                        return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                    }

                    WriteLine($"{pedido.EstudianteId}");
                    CrudFuntions.AddPedido(pedido, descPedido);
                    
                    // Para enviarle el correo al docente
                    estudiante = db.Estudiantes.FirstOrDefault(e => e.EstudianteId == pedido.EstudianteId);
                    WriteLine($"{estudiante.EstudianteId}");
                    //UI.SendNotTeacher(estudiante,descPedido,pedido);
                    return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
                }
                return Page();
            }
            catch(Exception ){
                TempData["ErrorMessageEstudiante"] = "No puedes poner una cantidad tan grande de materiales";
                return RedirectToPage("/EstudianteMenu", new{id = pedido.EstudianteId});
            }
        }
    }
}
