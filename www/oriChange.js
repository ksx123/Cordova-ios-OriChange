var oriChange =  {
    set: function(str, successCallback, errorCallback) {
		cordova.exec(
            successCallback,
            errorCallback,
            'OriChange',
            'orientationChanges',
            [str]
        );
    }
}
module.exports = oriChange;