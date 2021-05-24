package projfuncionario;
import java.awt.AWTException;
import java.awt.Robot;

public class Tela {

    public static void limparTela() {
        try {
            Robot pressbot = new Robot();
            pressbot.keyPress(17);
            pressbot.keyPress(76);
            pressbot.keyRelease(17);
            pressbot.keyRelease(76);
        } catch (AWTException awte) {
        }
        try {
            Thread.sleep(20);
        } catch (InterruptedException ie) {
            Thread.currentThread().interrupt();
        }

    }

}
