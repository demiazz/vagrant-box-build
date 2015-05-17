class Packer < Thor
  desc 'validate', 'Validate all the packer templates'
  def validate
    Dir.chdir './packer' do
      templates = Dir.glob('*.json')

      templates.each do |template|
        puts template

        unless system("packer validate #{ template }")
          fail 'Validation failed!'
        end

        puts "\n"
      end
    end
  end
end

class Build < Thor
  desc 'all', 'Build LTS and latest Ubuntu release boxes'
  def all
    build(%w(latest lts))
  end

  desc 'lts', 'Build LTS Ubuntu release box'
  def lts
    build(%w(lts))
  end

  desc 'latest', 'Build latest Ubuntu release box'
  def latest
    build(%w(latest))
  end

  private

  def build(releases)
    Dir.chdir './packer' do
      releases.each do |release|
        system "packer build #{ release }.json"
      end
    end
  end
end
