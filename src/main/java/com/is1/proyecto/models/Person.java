public class Person extends Model {

    // ActiveJDBC mapea automáticamente las columnas de la tabla 'users'
    // (como 'id', 'name', 'password', etc.) a los atributos de esta clase.
    // No necesitas declarar los campos (id, name, password) aquí como variables de instancia,
    // ya que la clase Model base se encarga de la interacción con la base de datos.

    // Opcional: Puedes agregar métodos getters y setters si prefieres un acceso más tipado,
    // aunque los métodos genéricos de Model (getString(), set(), getInteger(), etc.) ya funcionan.

    public String getFirstName() {
        return getString("first_name"); // Obtiene el valor de la columna 'name'
    }

    public void setFirstName(String name) {
        set("first_name", name); // Establece el valor para la columna 'name'
    }

    public String getLastName() {
        return getString("last_name"); // Obtiene el valor de la columna 'password'
    }

    public void setLastName(String lastName) {
        set("last_name", lastName); // Establece el valor para la columna 'password'
    }

}