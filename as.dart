// Logger mixin
interface Logger {
    void debug(String message);
    void info(String message);
    void warning(String message);
    void error(String message);
}

// Base Character class
class Character {
    String name;
    int level;

    public Character(String name, int level) {
        this.name = name;
        this.level = level;
    }
}

// Warrior class
class Warrior extends Character implements Logger {
    int strength;

    public Warrior(String name, int level, int strength) {
        super(name, level);
        this.strength = strength;
    }

    @Override
    public void debug(String message) {
        System.out.println("DEBUG [Warrior " + name + "]: " + message);
    }

    @Override
    public void info(String message) {
        System.out.println("INFO [Warrior " + name + "]: " + message);
    }

    @Override
    public void warning(String message) {
        System.out.println("WARNING [Warrior " + name + "]: " + message);
    }

    @Override
    public void error(String message) {
        System.out.println("ERROR [Warrior " + name + "]: " + message);
    }
}

// Mage class
class Mage extends Character implements Logger {
    int intelligence;

    public Mage(String name, int level, int intelligence) {
        super(name, level);
        this.intelligence = intelligence;
    }

    @Override
    public void debug(String message) {
        System.out.println("DEBUG [Mage " + name + "]: " + message);
    }

    @Override
    public void info(String message) {
        System.out.println("INFO [Mage " + name + "]: " + message);
    }

    @Override
    public void warning(String message) {
        System.out.println("WARNING [Mage " + name + "]: " + message);
    }

    @Override
    public void error(String message) {
        System.out.println("ERROR [Mage " + name + "]: " + message);
    }
}

// Rogue class
class Rogue extends Character implements Logger {
    int agility;

    public Rogue(String name, int level, int agility) {
        super(name, level);
        this.agility = agility;
    }

    @Override
    public void debug(String message) {
        System.out.println("DEBUG [Rogue " + name + "]: " + message);
    }

    @Override
    public void info(String message) {
        System.out.println("INFO [Rogue " + name + "]: " + message);
    }

    @Override
    public void warning(String message) {
        System.out.println("WARNING [Rogue " + name + "]: " + message);
    }

    @Override
    public void error(String message) {
        System.out.println("ERROR [Rogue " + name + "]: " + message);
    }
}

// Main class for testing
public class Main {
    public static void main(String[] args) {
        Warrior warrior = new Warrior("Alduin", 10, 20);
        warrior.debug("Testing debug message");
        warrior.info("Testing info message");
        warrior.warning("Testing warning message");
        warrior.error("Testing error message");

        Mage mage = new Mage("Gandalf", 15, 30);
        mage.debug("Testing debug message");
        mage.info("Testing info message");
        mage.warning("Testing warning message");
        mage.error("Testing error message");

        Rogue rogue = new Rogue("Legolas", 12, 25);
        rogue.debug("Testing debug message");
        rogue.info("Testing info message");
        rogue.warning("Testing warning message");
        rogue.error("Testing error message");
    }
}
