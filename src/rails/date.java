package rails;
import java.time.LocalDate;
public class date {
  public static void main(String args[]) {
    LocalDate localDate = LocalDate.of(2016, 01, 01);
     
    //Getting the day of week for a given date
    java.time.DayOfWeek dayOfWeek = localDate.getDayOfWeek();
    System.out.println(localDate + " was a " + dayOfWeek);
    LocalDate firstWorkingDay;
     
    //Using DayOfWeek to execute dependent business logic
    switch (dayOfWeek) {
      case FRIDAY:firstWorkingDay = localDate.plusDays(3);
        break;
      case SATURDAY:firstWorkingDay = localDate.plusDays(2);
        break;
      default:firstWorkingDay=localDate.plusDays(1);
        break;
    }
    System.out.println("First working day of 2016 was "+firstWorkingDay);
  }
}