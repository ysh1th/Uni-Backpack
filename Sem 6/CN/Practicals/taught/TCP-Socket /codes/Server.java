import java.io.*;
import java.net.*;
class Server {
    public static void main(String[] args)
    {
        ServerSocket server = null;  
        try {  
            // server is listening on port 8009
            server = new ServerSocket(8009);
            //setReuseAddress () method of Java Socket class 
            //enables or disables the SO_REUSEADDR socket option.
            //The initial setting of SO_REUSEADDR is disabled.
            server.setReuseAddress(true);  
            // running infinite loop for getting client request
            while (true) {  
                // socket object to receive incoming client requests
                Socket client = server.accept();  
                // Displaying that new client is connected to server
                //getInetAddress () method either returns the 
                //remote IP address to which the socket is connected
                //getHostAddress() method of InetAddress class 
                //returns the IP address string in textual presentation.
                System.out.println("New client connected" + client.getInetAddress().getHostAddress());  
                // create a new thread object
                ClientHandler1 clientSock = new ClientHandler1(client);  
                // This thread will handle the client separately
                new Thread(clientSock).start();
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            if (server != null) {
                try {
                    server.close();
                }
                catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
