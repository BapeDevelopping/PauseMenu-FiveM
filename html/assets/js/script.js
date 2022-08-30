$('body').hide();

window.addEventListener('message', (event) => {
    var data = event.data

    if (event.data.type === "ui") {
        if (event.data.status) {
            $('body').fadeIn();
            $('#rules').html(data.rule)
        } else {
            $('body').fadeOut();
        }
    }

    if (data.type === "discord") {
        window.invokeNative('openUrl', data.url)
    }
});

document.onkeydown = e => {
    if (e.keyCode === 27)
        $.post('http://pausemenu/close', JSON.stringify({}));
}

function backup() {
    $.post('http://pausemenu/close', JSON.stringify({}))
}

function map() {
    $.post('http://pausemenu/map', JSON.stringify({}))
}

function settings() {
    $.post('http://pausemenu/settings', JSON.stringify({}))
}

function keymap() {
    $.post('http://pausemenu/keymap', JSON.stringify({}))
}

function discord() {
    $.post('http://pausemenu/discord', JSON.stringify({}));
}

function leave() {
    $.post('http://pausemenu/quit', JSON.stringify({}));
}