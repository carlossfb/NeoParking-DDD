workspace {

  model {
    operator = person "Operator" "Responsible for managing entries, exits, and incident registration."

    parkingSystem = softwareSystem "Parking System" "Manages the parking flow, control, and monitoring." {

      accessControl = container "Access Control" "Manages entries, exits, and vehicle/owner registration." "Java / Spring Boot"
      payment = container "Payment" "Processes payments for ticket validations and monthly passes." "External API / Payment Gateway"
      incident = container "Incident" "Registers and tracks incidents (e.g., vehicle damage)." "Java / Spring Boot"

      operator -> accessControl "Registers vehicles and owners, grants entry by generating tickets lifecycle"
      operator -> incident "Registers incidents about user experience or vehicles damage.
      incident -> payment "Payment operation for compensations"
      accessControl -> payment "Validates if payment has been made to end ticket lifecycle"
    }
  }

  views {

    systemContext parkingSystem {
      include *
      autolayout lr
      title "System Context - Parking Systemy
    }

    container parkingSystem {
      include *
      autolayout lr
      title "Bounded Contexts (Containers) - Parking System"
    }

    theme default
  }
}
