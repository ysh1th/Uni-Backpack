import java.util.*;
import java.lang.*;
import distpav.*;
public class asgn {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("welcome to expo2020");
        System.out.println("__        _______ _     ____ ___  __  __ _____    _____ ___     _______  ______   ___    ____   ___ ____   ___  \n" +
                "\\ \\      / / ____| |   / ___/ _ \\|  \\/  | ____|  |_   _/ _ \\   | ____\\ \\/ /  _ \\ / _ \\  |___ \\ / _ \\___ \\ / _ \\ \n" +
                " \\ \\ /\\ / /|  _| | |  | |  | | | | |\\/| |  _|      | || | | |  |  _|  \\  /| |_) | | | |   __) | | | |__) | | | |\n" +
                "  \\ V  V / | |___| |__| |__| |_| | |  | | |___     | || |_| |  | |___ /  \\|  __/| |_| |  / __/| |_| / __/| |_| |\n" +
                "   \\_/\\_/  |_____|_____\\____\\___/|_|  |_|_____|    |_| \\___/   |_____/_/\\_\\_|    \\___/  |_____|\\___/_____|\\___/ ");

        userDetails userdetails = new userDetails();
        userDetails.enterDetails();

        distpav dp = new distpav();
        // for getting districts
        dp.askdist();
    }

    public static void exit(int status){}

}
