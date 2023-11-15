using AlmacenDataContext;
using AlmacenSQLiteEntities;
using System;
using static System.Console;

internal partial class Program
{
    static void Main()
    {
        //Prueba de push
        Console.Clear();
        Almacen db = new();
        CrudFuntions.CalcularAdeudo();
        WriteLine($"Provider: {db.Database.ProviderName}");
        UI.Manage();
    }
}