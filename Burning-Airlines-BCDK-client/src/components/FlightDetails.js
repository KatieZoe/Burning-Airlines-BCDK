import React, { Component } from "react";

class FlightDetails extends Component {
  render() {
    return (
      <div>
        {React.createElement(
          "p",
          null,
          React.createElement("button", null, "A1")
        )}
      </div>
    );
  }
}

export default FlightDetails;
