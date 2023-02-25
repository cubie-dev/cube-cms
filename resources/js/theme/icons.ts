import credits from '../../images/icons/icon-credits.png';
import duckets from '../../images/icons/icon-duckets.png';
import diamonds from '../../images/icons/icon-diamonds.png';
import online from '../../images/icons/icon-online.png';
import offline from '../../images/icons/icon-offline.png';
import success from '../../images/icons/icon-success.png';
import warning from '../../images/icons/icon-warning.png';
import info from '../../images/icons/icon-info.png';
import settings from '../../images/icons/icon-settings.png';
import frank from '../../images/icons/icon-frank.png';
import room from '../../images/icons/icon-room.png';
import clock from '../../images/icons/icon-clock.gif';
import danger from '../../images/icons/icon-danger.png';
import glasses from '../../images/icons/icon-glasses.png';
import pencil from '../../images/icons/icon-pencil.png';
import lock from '../../images/icons/icon-lock.png';
import gift from '../../images/icons/icon-gift.png';
import smallGift from '../../images/icons/icon-small-gift.png';
import envelope from '../../images/icons/icon-envelope.png';
import admin from '../../images/icons/icon-admin.png';
import respect from '../../images/icons/icon-respect.png';
import dog from '../../images/icons/icon-dog.png';
import logout from '../../images/icons/icon-logout.png';
import comment from '../../images/icons/icon-comment.png';
import people from '../../images/icons/icon-people.png';
import category from '../../images/icons/icon-category.png';
import referral from '../../images/icons/icon-referral.png';
import tablet from '../../images/icons/icon-tablet.png';
import boxOne from '../../images/icons/icon-box-one.png';
import boxTwo from '../../images/icons/icon-box-two.png';
import boxThree from '../../images/icons/icon-box-three.png';
import boxFour from '../../images/icons/icon-box-four.png';
import newuser from '../../images/icons/icon-newuser.png';
import genderBoy from '../../images/icons/icon-gender-boy.gif';
import genderGirl from '../../images/icons/icon-gender-girl.gif';
import habmeKey from '../../images/icons/icon-habme-key.svg';

export type Icon = 'credits'
| 'duckets'
| 'diamonds'
| 'online'
| 'offline'
| 'success'
| 'warning'
| 'info'
| 'settings'
| 'frank'
| 'room'
| 'clock'
| 'danger'
| 'glasses'
| 'pencil'
| 'lock'
| 'gift'
| 'smallGift'
| 'envelope'
| 'admin'
| 'respect'
| 'dog'
| 'logout'
| 'comment'
| 'people'
| 'category'
| 'referral'
| 'tablet'
| 'boxOne'
| 'boxTwo'
| 'boxThree'
| 'boxFour'
| 'newuser'
| 'genderBoy'
| 'genderGirl'
| 'habmeKey';

export type Icons = Record<Icon, {
    height: string;
    width: string;
    image: any;
}>;

export const icons: Icons = {
    credits: { height: '16px', width: '16px', image: credits },
    duckets: { height: '16px', width: '16px', image: duckets },
    diamonds: { height: '16px', width: '16px', image: diamonds },
    online: { height: '16px', width: '40px', image: online },
    offline: { height: '16px', width: '40px', image: offline },
    success: { height: '16px', width: '16px', image: success },
    warning: { height: '16px', width: '16px', image: warning },
    info: { height: '16px', width: '16px', image: info },
    settings: { height: '16px', width: '16px', image: settings },
    frank: { height: '16px', width: '19px', image: frank },
    room: { height: '18px', width: '18px', image: room },
    clock: { height: '18px', width: '20px', image: clock },
    danger: { height: '16px', width: '16px', image: danger },
    glasses: { height: '16px', width: '16px', image: glasses },
    pencil: { height: '12px', width: '12px', image: pencil },
    lock: { height: '16px', width: '16px', image: lock },
    gift: { height: '16px', width: '20px', image: gift },
    smallGift: { height: '20px', width: '18px', image: smallGift },
    envelope: { height: '1px', width: '16px', image: envelope },
    admin: { height: '16px', width: '16px', image: admin },
    respect: { height: '16px', width: '16px', image: respect },
    dog: { height: '16px', width: '17px', image: dog },
    logout: { height: '16px', width: '16px', image: logout },
    comment: { height: '16px', width: '16px', image: comment },
    people: { height: '16px', width: '16px', image: people },
    category: { height: '17px', width: '16px', image: category },
    referral: { height: '18px', width: '18px', image: referral },
    tablet: { height: '18px', width: '22px', image: tablet },
    boxOne: { height: '30px', width: '30px', image: boxOne },
    boxTwo: { height: '30px', width: '30px', image: boxTwo },
    boxThree: { height: '30px', width: '30px', image: boxThree },
    boxFour: { height: '30px', width: '30px', image: boxFour },
    newuser: { height: '27px', width: '31px', image: newuser },
    genderBoy: { height: '21px', width: '21px', image: genderBoy },
    genderGirl: { height: '27px', width: '21px', image: genderGirl },
    habmeKey: { height: '16px', width: '16px', image: habmeKey },
};
