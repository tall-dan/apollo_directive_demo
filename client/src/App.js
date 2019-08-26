import React, { Component } from 'react';
import { gql } from 'apollo-boost';
import { Grid, Col, Row } from 'react-flexbox-grid';
import DemoClient from './demoClient'
import './App.css';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { results: {} }
  }


  persistQuery = (event) => {
    this.setState({query: event.target.value});
  };

  displayResults = (results) => {
    this.setState({results: results.data});
  };

  sendQuery = () => {
    DemoClient.query({query: gql`${this.state.query}`}).then(this.displayResults);
  }

  render() {
    return (
      <div className="App">
        <span> This page is made to illustrate
          <a href="https://github.com/apollographql/apollo-client/issues/4628"> this issue</a>
          - custom directives that omit data do not work with apollo js
          This same query can be seen working successfully <a href="/graphiql">here</a>
        </span>
        <Grid fluid>
          <Row>
            <Col xs={6}>
              <textarea className="query-input" onChange={this.persistQuery}>
              {
`query {
  currentUser {
    createdAt @myspecialinclude(ifElement: "a", inArray: ["b"])
  }
}`
              }
              </textarea>
              <input type="submit" value="Submit" onClick={this.sendQuery} />
            </Col>
            <Col xs={6}>
              { JSON.stringify(this.state.results, null, 2) }
            </Col>
          </Row>
        </Grid>
      </div>
    );
  }
}

export default App;
