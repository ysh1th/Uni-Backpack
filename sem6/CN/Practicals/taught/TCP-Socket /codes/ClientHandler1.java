import java.io.*;
import java.net.*;
public class ClientHandler1 implements Runnable 
    {
        private final Socket clientSocket;  
        public ClientHandler1(Socket socket)
        {
            this.clientSocket = socket;
        }  
        public void run()
        {
            PrintWriter out = null;
            BufferedReader in = null;
            try {
                // get the outputstream of client
                out = new PrintWriter(clientSocket.getOutputStream(), true);  
                // get the inputstream of client
                in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));  
                String line;
                while ((line = in.readLine()) != null) {
                    // writing the received message from client
                    System.out.printf(" Sent from the client: %s\n",line);
                    out.println(line);
                    out.flush();
                    if (line.trim().equals("BYE"))
                    {
                        System.out.println("Client socket close");
                        break;
                    }
                }
                clientSocket.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            finally {
                try {
                    if (out != null) {
                        out.close();
                    }
                    if (in != null) {
                        in.close();
                        clientSocket.close();
                    }
                }
                catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }