'use strict';

var React = require('react-native');

var FindLocation = require('../../pages/FindLocation');

var {
    StyleSheet,
    TouchableHighlight,
    Image
} = React;

var styles = StyleSheet.create({
    icon: {
        width: 25,
        height: 18,
        marginTop: 5,
        marginLeft: 8
    }
});

var AddLocationicon = React.createClass({

    goToAddPage: function() {
        this.props.toRoute({
            name: "Find the exact location",
            component: FindLocation
        });
    },

    render() {
        return (
            <TouchableHighlight underlayColor="transparent" onPress={this.goToAddPage}>
                <Image source={require('image!add_people_icon')} style={styles.icon} />
            </TouchableHighlight>
        )
    }
});

module.exports = AddLocationicon;