import java.util.*;
import java.io.*;
import java.net.*;

public class Client {
  public Client(String host, int port) throws IOException {
    try {
    Socket client = new Socket(host, port);

    System.out.println("Connected to server");

    DataInputStream in = new DataInputStream(client.getInputStream());
    
    String server_message = in.readUTF();
    System.out.println(server_message);

    DataOutputStream out = new DataOutputStream(client.getOutputStream());

    Scanner user_in = new Scanner(System.in);

    int num1 = user_in.nextInt();
    String op = user_in.next();
    int num2 = user_in.nextInt();

    out.writeUTF(Integer.toString(num1));
    out.writeUTF(op);
    out.writeUTF(Integer.toString(num2));

    String result = in.readUTF();
    System.out.println(result);

    user_in.close();
    client.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  public static void main(String[] args) throws IOException {
    new Client("localhost", 6000);
  }
}
