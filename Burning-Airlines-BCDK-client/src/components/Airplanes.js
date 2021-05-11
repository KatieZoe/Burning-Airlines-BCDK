import React, { Component } from "react";
import axios from 'axios';

const SERVER_URL = "http://localhost:3000/airplanes.json";

class Airplanes extends Component {
  constructor() {
    super();
    console.log('constructor()');
    this.state = {
      airplanes: [],
    };
  }

  componentDidMount(){
    const fetchAirplanes=()=>{
      axios.get(SERVER_URL).then((results) => {
        this.setState({airplanes: results.data});
        setTimeout(fetchAirplanes, 4000); 
      });
      this.saveAirplane = this.saveAirplane.bind(this);
    };

    fetchAirplanes();
  }

  saveAirplane(content) {
    axios.post(SERVER_URL, {content: content}).then((response)=>{
      this.setState({airplanes: [...this.state.airplanes, response.data]});
    });
  }

  render() {
    return (
      <div>
        <h1>Virgin Airlines</h1>
        <AirplaneForm onSubmit={this.saveAirplane} />
        <AirplanesList airplanes={this.state.airplanes} />
      </div>
    );
  }
}

class AirplaneForm extends Component {
  constructor() {
    super();
    this.state = { content: "" };
    this._handleChange = this._handleChange.bind(this);
    this._handleSubmit = this._handleSubmit.bind(this);
  }

  _handleChange(event) {
    this.setState({ content: event.target.value });
  }

  _handleSubmit(event) {
    event.preventDefault();
    this.props.onSubmit(this.state.content);
    this.setState({ content: "" });
  }

  render() {
    return (
      <form onSubmit={this._handleSubmit}>
        <p><input type="text" placeholder="airplane name"/></p>
        <p><input type="text" placeholder="airplane rows"/></p>
        <p><input type="text" placeholder="airplane columns"/></p>
        <input type="submit" value="Save" />
        <input type="submit" value="Cancel" />
      </form>
    );
  }
}

const AirplanesList = (props) => {
  return (
    <div>
      {props.airplanes.map((s) => (
        <p key={s.id}>{s.content}</p>
      ))}
    </div>
  );
};

export default Airplanes;
