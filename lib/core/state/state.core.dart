import 'package:portfolio/core/state/emailHover/emailHover.store.dart';
import 'package:portfolio/core/state/githubHover/gitHubHover.store.dart';
import 'package:portfolio/core/state/iconHover/iconHover.store.dart';
import 'package:portfolio/core/state/instagramHover/instagramHover.store.dart';
import 'package:portfolio/core/state/linkedInHover/linkedInHover.store.dart';
import 'package:portfolio/core/state/profileHover/profileHover.store.dart';
import 'package:portfolio/core/state/spotifyHover/spotifyHover.store.dart';
import 'package:portfolio/core/state/twitterHover/twitterHover.store.dart';

class State {
  IconHoverStore iconHoverStore = IconHoverStore();
  ProfileHoverStore profileHoverStore = ProfileHoverStore();
  EmailHoverStore emailHoverStore = EmailHoverStore();
  GitHubHoverStore gitHubHoverStore = GitHubHoverStore();
  InstagramHoverStore instagramHoverStore = InstagramHoverStore();
  LinkedInHoverStore linkedInHoverStore = LinkedInHoverStore();
  SpotifyHoverStore spotifyHoverStore = SpotifyHoverStore();
  TwitterHoverStore twitterHoverStore = TwitterHoverStore();
}
