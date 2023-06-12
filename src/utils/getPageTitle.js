const title = process.env.VUE_APP_BASE_NAME || 'Vue Antdv Admin';

export default function getPageTitle(pageTitle) {
  if (pageTitle) {
    return `${pageTitle}-${title}`;
  }
  return title;
}
