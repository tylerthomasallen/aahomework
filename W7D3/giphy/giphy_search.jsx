import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchSearchGiphys} from './util/api_util';
import {receiveSearchGiphys} from './actions/giphy_actions';

window.fetchSearchGiphys = fetchSearchGiphys;

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();

  window.fetchSearchGiphys = fetchSearchGiphys;
  window.store = store;

  const root = document.getElementById('root');
});
