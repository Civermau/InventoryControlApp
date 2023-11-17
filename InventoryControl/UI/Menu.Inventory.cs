using System;
using AlmacenDataContext;
using AlmacenSQLiteEntities;

public static partial class UI
{
    //Menu para que el usuario pueda agregar, modificar o elimiar material
    static void ManageInventory()
    {
        do
        {
            WriteLine("Administrar inventario Menu:");
            WriteLine("1: Agregar nuevo material"); //check
            WriteLine("2: Modificar material"); //check
            WriteLine("3: Eliminar material"); //check
            WriteLine("4: Salir");
            String option = ReadLine()??"";
            Clear();

            switch (option)
            {
                case "1":
                    CrudFunctions.NewMaterial();
                    break;
                case "2":
                    CrudFunctions.ListMaterialsWithHighlight();
                    int updateMaterials = CrudFunctions.UpdateMaterials();
                    WriteLine($"{updateMaterials} materiales modificados.");
                    WriteLine();
                    CrudFunctions.ListMaterialsWithHighlight();
                    break;
                case "3":
                    CrudFunctions.ListMaterialsWithHighlight();
                    int deletedMaterials = CrudFunctions.DeleteMaterials();
                    WriteLine($"{deletedMaterials} materiales eliminados.");
                    WriteLine();
                    CrudFunctions.ListMaterialsWithHighlight();
                    break;
                case "4":
                    return;
                default:
                    break;
            }
        } while (true);
    }
}