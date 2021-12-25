import { LightningElement, wire } from 'lwc';
import getProducts from '@salesforce/apex/ApexController.getProducts';

export default class ProductCard extends LightningElement {
    @wire (getProducts) someProducts;
}