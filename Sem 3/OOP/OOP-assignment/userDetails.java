import java.util.*;
public class userDetails {

    public int ppl;
    public int age;
    public String name;
//    userDetails(int ppl) {
//        this.ppl = ppl;
//    }
//    public userDetails(){}
    public static void enterDetails(){
        Scanner s = new Scanner(System.in);

        System.out.println("enter no. of ppl entering: ");
        int ppl = s.nextInt();
        String[] Name = new String[ppl+1];
        int[] Age = new int[ppl+1];

        for(int i=1;i<=ppl;i++) {
            System.out.println("enter name"+i);
//            System.out.print("*garbage scanner*");
            String garbageScan1 = s.nextLine();
            Name[i]=s.nextLine();
            System.out.println(Name[i]);
            System.out.println("enter age");
            Age[i]=s.nextInt();
            String garbageScan2 = s.nextLine();
            System.out.println(Age[i]);
        }

        //date and time selection
        entrydate e = new entrydate();
        e.month();
    }
}

class entrydate {
    public void month() {
        Scanner s = new Scanner(System.in);
        System.out.println("enter month of entry (8-12)");
        int month = s.nextInt();
        if (month < 8 || month > 12) {
            System.out.println("Expo2020 is currently closed or not yet opened");
            System.out.println("\tpls enter correct month number (8-12 only)\n");
            month();
        }
        else {
            date(month);
        }
    }

    public void date(int month) {
        Scanner s = new Scanner(System.in);

        System.out.println("enter date of entry");
        if (month == 8 || month == 10 || month == 12) {
            System.out.println("\t(1-31)");
        } else if (month == 9 || month == 11) {
            System.out.println("\t(1-30)");
        }

        int date = s.nextInt();

        if (month == 8 || month == 10 || month == 12) {
            if (date == 0 || date > 31) {
                System.out.println("enter a valid date\n");
                date(month);
            }
            else {
                hour(date,month);
            }
        } else if (month == 9 || month == 11) {
            if (date == 0 || date > 30) {
                System.out.println("enter a valid date\n");
                date(month);
            }
            else {
                hour(date, month);
            }
        }
    }

    public void hour(int date, int month) {
        Scanner s = new Scanner(System.in);
        System.out.println("enter hours of entry (10-22)");
        int hour = s.nextInt();
        if (hour < 10 || hour > 22) {
            System.out.println("enter a valid time\n\tExpo 2020 is closed right now\n");
            hour(date,month);
        }
        else
            System.out.println("********************************************************************************************************");
            System.out.println("\nentering on (" + date + "/" + month + ")\n\t\t at " + hour+"\n");
            System.out.println("********************************************************************************************************");
    }
}
